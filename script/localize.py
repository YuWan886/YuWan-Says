import os
import json
import re
import asyncio
import platform
import sys


def load_config():
    """加载配置"""
    base_dir = os.path.dirname(os.path.abspath(__file__))
    return {
        "input_directory": os.path.abspath(os.path.join(base_dir, ".")),
        "zh_cn_output_directory": os.path.abspath(os.path.join(base_dir, ".")),
    }

# 支持转义字符的正则模式
text_pattern = re.compile(r'(?<!\\)".*?(?<!\\)"')


def save_translations(translations, output_path, zh_cn_path):
    """保存翻译文件并创建副本"""
    try:
        # 检查翻译内容是否为空
        if not translations:
            print("警告: 翻译内容为空，跳过保存")
            return
            
        # 备份现有翻译文件
        existing_translations = {}
        if os.path.exists(output_path):
            with open(output_path, "r", encoding="utf-8") as f:
                existing_translations = json.load(f)
        
        # 合并新旧翻译内容(保留现有翻译)
        merged_translations = {**existing_translations, **translations}
        
        with open(output_path, "w", encoding="utf-8") as out_file:
            json.dump(merged_translations, out_file, ensure_ascii=False, indent=4)

        with open(output_path, "r", encoding="utf-8") as original_file:
            with open(zh_cn_path, "w", encoding="utf-8") as copy_file:
                copy_file.write(original_file.read())

        print(f"翻译结果已保存至: {output_path}")
        print(f"已复制到: {zh_cn_path}")
    except Exception as e:
        print(f"错误: 保存翻译文件 {output_path} 或 {zh_cn_path} 时出错: {e}")


async def traverse_and_replace_texts(
    directory, translations, number, output_file_name="en_us.json", zh_cn_output_dir="."
):
    """遍历JSON文件，替换text为translate，并生成翻译文件"""
    modified_files = 0
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".json") and file != "config.json":  # Skip config.json
                file_path = os.path.join(root, file)
                with open(file_path, "r", encoding="utf-8") as f:
                    original_data = json.load(f)
                
                new_data = replace_text(original_data.copy(), translations, number, "")
                
                if new_data != original_data:
                    modified_files += 1
                    rel_path = os.path.relpath(file_path, directory)
                    if "data/" in rel_path:
                        rel_path = rel_path[rel_path.index("data/") + len("data/") :]
                    rel_path = rel_path.replace("data/", "")
                    
                    with open(file_path, "w", encoding="utf-8") as f:
                        json.dump(new_data, f, ensure_ascii=False, indent=4)
                    print(f"已修改: {rel_path}")
                # Remove first three path components
                path_components = rel_path.replace(os.sep, ".").split(".")
                if len(path_components) > 3:
                    key_prefix = ".".join(path_components[3:])
                else:
                    key_prefix = ".".join(path_components)
                if key_prefix.endswith(".json"):
                    key_prefix = key_prefix[:-5]

                try:
                    with open(file_path, "r", encoding="utf-8") as f:
                        data = json.load(f)
                        print(f"正在处理JSON文件: {file_path}")
                        replace_text(data, translations, number, key_prefix)

                    with open(file_path, "w", encoding="utf-8") as f:
                        json.dump(data, f, ensure_ascii=False, indent=4)

                except json.JSONDecodeError as e:
                    print(f"JSON文件 {file_path} 解码错误: {e}")
                    continue
                except Exception as e:
                    print(f"处理JSON文件 {file_path} 时出错: {e}")
                    continue

    output_file_path = os.path.join(zh_cn_output_dir, output_file_name)
    zh_cn_file_path = os.path.join(zh_cn_output_dir, "zh_cn.json")
    save_translations(translations, output_file_path, zh_cn_file_path)


def replace_text(data, translations, number, key_prefix):
    """递归替换JSON中的text字段为translate"""
    if isinstance(data, dict):
        if "type" in data and data["type"] == "text":
            del data["type"]

        keys = list(data.keys())
        for key in keys:
            if key == "text" and isinstance(data[key], str):
                # 处理转义字符
                text_value = data[key].replace('\\"', '"')
                translation_key = f"{key_prefix}.{number[0]}"
                existing_key = next(
                    (k for k, v in translations.items() if v == text_value), None
                )
                if existing_key:
                    data["translate"] = existing_key
                else:
                    translations[translation_key] = text_value
                    data["translate"] = translation_key
                    number[0] += 1
                del data["text"]
            else:
                data[key] = replace_text(data[key], translations, number, key_prefix)
        return data
    elif isinstance(data, list):
        return [replace_text(item, translations, number, key_prefix) for item in data]
    else:
        return data

async def extract_translations(directory, zh_cn_output_dir=None, output_file_name="en_us.json"):
    """从mcfunction文件中提取翻译文本"""
    if zh_cn_output_dir is None:
        base_dir = os.path.dirname(os.path.abspath(__file__))
        zh_cn_output_dir = os.path.abspath(os.path.join(base_dir, "../YuWan-Says-RP", "assets", "minecraft", "lang"))
    
    translations = {}
    namespace_counts = {}
    
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".mcfunction"):
                file_path = os.path.join(root, file)
                print(f"正在处理mcfunction文件: {file_path}")

                relative_path = os.path.relpath(file_path, directory)
                data_position = relative_path.find("data.")
                if data_position != -1:
                    relative_path = relative_path[data_position + len("data.") :]
                # Remove first three path components
                path_components = relative_path.replace(os.sep, ".").split(".")
                if len(path_components) > 3:
                    namespace_prefix = ".".join(path_components[3:]).replace(
                        ".mcfunction", ""
                    )
                else:
                    namespace_prefix = ".".join(path_components).replace(
                        ".mcfunction", ""
                    )

                if namespace_prefix not in namespace_counts:
                    namespace_counts[namespace_prefix] = 1

                try:
                    with open(file_path, "r", encoding="utf-8") as f:
                        content = f.read()

                    matches = text_pattern.findall(content)
                    for match in matches:
                        original_text = match[1:-1]  # Remove quotes
                        quote_type = match[0]

                        if "$" in original_text:
                            continue

                        translation_key = (
                            f"{namespace_prefix}.{namespace_counts[namespace_prefix]}"
                        )
                        existing_key = next(
                            (k for k, v in translations.items() if v == original_text),
                            None,
                        )

                        if existing_key:
                            translation_key = existing_key
                        else:
                            translations[translation_key] = original_text
                            namespace_counts[namespace_prefix] += 1

                        content = content.replace(
                            match,
                            f"translate: {quote_type}{translation_key}{quote_type}",
                        )

                    with open(file_path, "w", encoding="utf-8") as f:
                        f.write(content)

                except Exception as e:
                    print(f"处理mcfunction文件 {file_path} 时出错: {e}")

    if translations:
        output_file_path = os.path.join(zh_cn_output_dir, output_file_name)
        zh_cn_file_path = os.path.join(zh_cn_output_dir, "zh_cn.json")
        save_translations(translations, output_file_path, zh_cn_file_path)
    else:
        print("未找到mcfunction翻译键。")


async def apply_translations(directory, translations):
    """将翻译键写回原始文件"""
    # Process JSON files
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".json") and file != "config.json":  # Skip config.json
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, "r", encoding="utf-8") as f:
                        data = json.load(f)
                        print(f"正在写回JSON文件: {file_path}")
                        updated_data = update_translations(data, translations)

                    with open(file_path, "w", encoding="utf-8") as f:
                        json.dump(updated_data, f, ensure_ascii=False, indent=4)
                        print(f"成功写回JSON文件: {file_path}")

                except json.JSONDecodeError as e:
                    print(f"错误: JSON文件 {file_path} 解码错误: {e}")
                except Exception as e:
                    print(f"错误: 写回JSON文件 {file_path} 时出错: {e}")

    # Process .mcfunction files
    text_pattern = re.compile(r'(translate:\s*([\'"])([^\2]*?)\2)')
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".mcfunction"):
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, "r", encoding="utf-8") as f:
                        content = f.read()

                    matches = text_pattern.findall(content)
                    modified = False
                    for match in matches:
                        full_match, quote_type, translation_key = match
                        if translation_key in translations:
                            new_text = translations[translation_key].replace(
                                quote_type, f"\\{quote_type}"
                            )
                            content = content.replace(
                                full_match, f"text: {quote_type}{new_text}{quote_type}"
                            )
                            modified = True

                    if modified:
                        with open(file_path, "w", encoding="utf-8") as f:
                            f.write(content)
                        print(f"成功写回mcfunction文件: {file_path}")
                    else:
                        print(f"未在 {file_path} 中找到需要替换的翻译键")

                except Exception as e:
                    print(f"错误: 写回mcfunction文件 {file_path} 时出错: {e}")


def update_translations(data, translations):
    """递归更新JSON中的translate字段"""
    if isinstance(data, dict):
        updated_data = {}
        for key, value in data.items():
            if key == "translate" and isinstance(value, str) and value in translations:
                updated_data["text"] = translations[value]
            else:
                updated_data[key] = update_translations(value, translations)
        return updated_data
    elif isinstance(data, list):
        return [update_translations(item, translations) for item in data]
    else:
        return data



async def write_back_translations(directory, zh_cn_output_dir):
    """执行翻译写回"""
    zh_cn_file_path = os.path.join(zh_cn_output_dir, "zh_cn.json")
    if not os.path.exists(zh_cn_file_path):
        print(f"错误: 未找到 {zh_cn_file_path}")
        return

    try:
        with open(zh_cn_file_path, "r", encoding="utf-8") as f:
            zh_cn_translations = json.load(f)
        print(f"成功加载翻译文件: {zh_cn_file_path}")
        await apply_translations(directory, zh_cn_translations)
        print("翻译写回完成！")
    except json.JSONDecodeError as e:
        print(f"错误: 翻译文件 {zh_cn_file_path} 解码错误: {e}")
    except Exception as e:
        print(f"错误: 读取翻译文件 {zh_cn_file_path} 时出错: {e}")


async def show_menu():
    """显示菜单并处理用户输入"""
    # 使用硬编码配置
    base_dir = os.path.dirname(os.path.abspath(__file__))
    directory = os.path.abspath(os.path.join(base_dir, "../YuWan-Says-DP"))
    
    # 确保输出目录存在
    zh_cn_output_dir = os.path.abspath(os.path.join(base_dir, "../YuWan-Says-RP", "assets", "minecraft", "lang"))
    try:
        os.makedirs(zh_cn_output_dir, exist_ok=True)
        print(f"输出目录已创建: {zh_cn_output_dir}")
    except Exception as e:
        print(f"错误: 无法创建输出目录 {zh_cn_output_dir}: {e}")
        return

    while True:
        print("\n=== 翻译处理菜单 ===")
        print("1. 提取翻译")
        print("2. 写回翻译")
        print("0. 退出程序")
        choice = input("请输入选项 (0-2): ").strip()

        if choice == "1":
            await extract_translations(directory, zh_cn_output_dir)
        elif choice == "2":
            await write_back_translations(directory, zh_cn_output_dir)
        elif choice == "0":
            print("程序退出")
            break
        else:
            print("无效选项，请输入0、1或2")


async def main():
    """主函数，启动菜单"""
    await show_menu()


if __name__ == "__main__":
    if platform.system() == "Emscripten":
        asyncio.ensure_future(main())
    else:
        asyncio.run(main())
