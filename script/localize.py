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


# 正则模式用于匹配JSON-like结构，如 {text: "..."} 或 {translate: "..."}
json_pattern = re.compile(r'\{[^\{\}]*?\}', re.DOTALL)


def save_translations(translations, output_path, zh_cn_path):
    """保存翻译文件并创建副本"""
    try:
        if not translations:
            print("警告: 翻译内容为空，跳过保存")
            return
            
        existing_translations = {}
        if os.path.exists(output_path):
            with open(output_path, "r", encoding="utf-8") as f:
                existing_translations = json.load(f)
        
        merged_translations = {**existing_translations, **translations}
        
        # 保存时确保 Unicode 字符不被转义
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
            if file.endswith(".json") and file != "config.json":
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, "r", encoding="utf-8") as f:
                        original_data = json.load(f)
                    
                    rel_path = os.path.relpath(file_path, directory)
                    if "data/" in rel_path:
                        rel_path = rel_path[rel_path.index("data/") + len("data/") :]
                    rel_path = rel_path.replace("data/", "")
                    
                    path_components = rel_path.replace(os.sep, ".").split(".")
                    key_prefix = ".".join(path_components[3:] if len(path_components) > 3 else path_components)
                    if key_prefix.endswith(".json"):
                        key_prefix = key_prefix[:-5]

                    new_data = replace_text(original_data, translations, number, key_prefix)
                    
                    if new_data != original_data:
                        modified_files += 1
                        with open(file_path, "w", encoding="utf-8") as f:
                            json.dump(new_data, f, ensure_ascii=False, indent=4)
                        print(f"已修改: {rel_path}")
                except json.JSONDecodeError as e:
                    print(f"JSON文件 {file_path} 解码错误: {e}")
                except Exception as e:
                    print(f"处理JSON文件 {file_path} 时出错: {e}")

    output_file_path = os.path.join(zh_cn_output_dir, output_file_name)
    zh_cn_file_path = os.path.join(zh_cn_output_dir, "zh_cn.json")
    save_translations(translations, output_file_path, zh_cn_file_path)


def replace_text(data, translations, number, key_prefix):
    """递归替换JSON中的text字段为translate，保留Unicode字符"""
    if isinstance(data, dict):
        if "text" in data and isinstance(data["text"], str):
            text_value = data["text"]
            translation_key = f"{key_prefix}.{number[0]}"
            existing_key = next((k for k, v in translations.items() if v == text_value), None)
            if existing_key:
                data["translate"] = existing_key
            else:
                translations[translation_key] = text_value  
                data["translate"] = translation_key
                number[0] += 1
            if "type" in data and data["type"] == "text":
                del data["type"]
            del data["text"]
        for key in data:
            data[key] = replace_text(data[key], translations, number, key_prefix)
        return data
    elif isinstance(data, list):
        return [replace_text(item, translations, number, key_prefix) for item in data]
    return data


def process_json_like_string(json_str, namespace_prefix, namespace_counts, translations):
    """处理单个JSON-like字符串，保留Unicode字符"""
    try:
        # 尝试解析为JSON，禁用ASCII转义
        json_data = json.loads(json_str, strict=False)
        
        # 如果是数组，处理每个元素
        if isinstance(json_data, list):
            modified = False
            new_items = []
            for item in json_data:
                if isinstance(item, dict) and "text" in item:
                    text_value = item["text"]
                    if "$" in text_value:
                        new_items.append(item)
                        continue
                        
                    translation_key = f"{namespace_prefix}.{namespace_counts[namespace_prefix]}"
                    existing_key = next((k for k, v in translations.items() if v == text_value), None)
                    
                    if not existing_key:
                        translations[translation_key] = text_value  
                        namespace_counts[namespace_prefix] += 1
                        new_key = translation_key
                    else:
                        new_key = existing_key
                    
                    new_item = {"translate": new_key}
                    if "color" in item:
                        new_item["color"] = item["color"]
                    new_items.append(new_item)
                    modified = True
                else:
                    new_items.append(item)
            
            if modified:
                return json.dumps(new_items, ensure_ascii=False)
            return json_str
        
        # 如果是对象，处理text字段
        elif isinstance(json_data, dict) and "text" in json_data:
            text_value = json_data["text"]
            if "$" in text_value:
                return json_str
                
            translation_key = f"{namespace_prefix}.{namespace_counts[namespace_prefix]}"
            existing_key = next((k for k, v in translations.items() if v == text_value), None)
            
            if not existing_key:
                translations[translation_key] = text_value  
                namespace_counts[namespace_prefix] += 1
                new_key = translation_key
            else:
                new_key = existing_key
            
            new_data = {"translate": new_key}
            if "color" in json_data:
                new_data["color"] = json_data["color"]
            return json.dumps(new_data, ensure_ascii=False)
        
        return json_str
    except json.JSONDecodeError:
        # 如果不是有效的JSON，尝试直接匹配text字段
        text_match = re.search(r'text\s*:\s*"([^"]*)"', json_str, re.UNICODE)
        if text_match:
            text_value = text_match.group(1)
            if "$" in text_value:
                return json_str
                
            translation_key = f"{namespace_prefix}.{namespace_counts[namespace_prefix]}"
            existing_key = next((k for k, v in translations.items() if v == text_value), None)
            
            if not existing_key:
                translations[translation_key] = text_value
                namespace_counts[namespace_prefix] += 1
                new_key = translation_key
            else:
                new_key = existing_key
            
            return json_str.replace(text_match.group(0), f'translate: "{new_key}"')
        return json_str


async def extract_translations(directory, zh_cn_output_dir=None, output_file_name="en_us.json"):
    """从mcfunction文件中提取翻译文本，包括JSON-like结构"""
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
                path_components = relative_path.replace(os.sep, ".").split(".")
                namespace_prefix = ".".join(path_components[3:] if len(path_components) > 3 else path_components).replace(".mcfunction", "")

                if namespace_prefix not in namespace_counts:
                    namespace_counts[namespace_prefix] = 1

                try:
                    with open(file_path, "r", encoding="utf-8") as f:
                        content = f.read()

                    modified_content = content
                    json_matches = json_pattern.findall(content)
                    for json_str in json_matches:
                        try:
                            if 'translate:' in json_str:
                                continue                          
                            new_json_str = process_json_like_string(
                                json_str, 
                                namespace_prefix, 
                                namespace_counts, 
                                translations
                            )
                            
                            if new_json_str != json_str:
                                modified_content = modified_content.replace(json_str, new_json_str)
                        except Exception as e:
                            print(f"警告: 处理JSON结构时出错: {e}")
                            continue

                    if modified_content != content:
                        with open(file_path, "w", encoding="utf-8") as f:
                            f.write(modified_content)
                        print(f"已修改mcfunction文件: {file_path}")

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
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".json") and file != "config.json":
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

    translate_pattern = re.compile(r'(translate:\s*"([^"]*)")', re.UNICODE)
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".mcfunction"):
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, "r", encoding="utf-8") as f:
                        content = f.read()

                    modified = False
                    for match in translate_pattern.finditer(content):
                        translate_key = match.group(2)
                        if translate_key in translations:
                            new_text = translations[translate_key]  
                            content = content.replace(
                                match.group(0), 
                                f'text: "{new_text}"'
                            )
                            modified = True
                    
                    if modified:
                        with open(file_path, "w", encoding="utf-8") as f:
                            f.write (content)
                        print(f"成功写回mcfunction文件: {file_path}")
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
    base_dir = os.path.dirname(os.path.abspath(__file__))
    directory = os.path.abspath(os.path.join(base_dir, "../YuWan-Says-DP"))
    zh_cn_output_dir = os.path.abspath(os.path.join(base_dir, "../YuWan-Says-RP", "assets", "minecraft", "lang"))
    
    os.makedirs(zh_cn_output_dir, exist_ok=True)
    print(f"输出目录已创建: {zh_cn_output_dir}")

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