<div align="center">
  <img style="width: 256px; height: 64px;" src="YuWan-Says-RP\assets\minecraft\textures\gui\title\minceraft.png" alt="logo" />

  <h1>YuWan Says - 趣味生存数据包</h1>
  <p><em>你说我做+不要做大杂烩趣味数据包</em></p>
</div>

## 🎮 玩法介绍

这是一个支持20+人游玩的趣味生存数据包，核心玩法如下：
- 每4分钟会随机抽取一个事件
- 玩家需要完成这些随机事件才能获得积分
- 10个事件结束后，系统会对玩家积分进行排名
- 积分最高的玩家将获得胜利

## 📜 事件类型

事件分为两大类：
- **A类**：禁止类事件 - 玩家需要避免做某些行为
- **B类**：挑战类事件 - 玩家需要完成特定挑战

### 事件列表
<details>
<summary>展开</summary>

类型 | 编号 | 名称 | 描述
--- | --- | --- | ---
A | 1 | 别踩草方块 | 不要踩在草方块上
A | 2 | 旱鸭子 | 不要游泳
A | 3 | 断腿 | 不要跳跃
A | 4 | 禁止潜行 | 不要潜行(蹲下)
A | 5 | 动起来！ | 必须保持移动
A | 6 | No "W" | 不要按前进键
A | 7 | 玻璃体质 | 不要受到伤害
A | 8 | 禁工作台 | 不要使用工作台
A | 9 | 007 | 社畜
A | 10 | 飞起来！ | 装逼让你飞起来！
A | 11 | 胃病 | 不要进食
A | 12 | 胸部？ | 不要打开箱子
A | 13 | 石器时代 | 不要使用铁/金/钻石工具
A | 14 | 恐高 | 下落高度不要超过3格
A | 15 | 静如处子 | 不要造成伤害
A | 16 | UHC? | 活下去
A | 17 | 无副手 | 副手不要占用
A | 18 | 无主手 | 主手不要占用
A | 19 | 假如我是一只吸血鬼 | 不要暴露在太阳底下
-----|-----|-----|-----
B | 1 | 制作木镐 | 制作一个木镐
B | 2 | 时间要开始加速了 | 时间要开始加速了
B | 3 | 淘金热 | 快去挖金吧！
B | 4 | 梦中的颜色 | 挖到钻石
B | 5 | 教培 | 繁殖动物?次
B | 6 | 真香 | 吃掉?个腐肉
B | 7 | 园丁 | 种植?个小麦种子
B | 8 | 钓鱼佬 | 捕鱼?次
B | 9 | 猪猪骑士 | 骑猪移动?CM
B | 10 | 快乐恶魂冲鸭 | 骑乘快乐恶魂移动?CM
B | 11 | 优秀的水手 | 乘船移动?CM
B | 12 | 100种死法 | 被?击杀
B | 13 | 附魔师 | 完成一次附魔
B | 14 | 第一个喝牛奶的人 | 喝一桶牛奶
B | 15 | 优秀的水手 II | 游泳移动?CM
B | 16 | 起来重睡 | 睡觉时被幻翼攻击
B | 17 | 冲刺冲刺♿ | 乘坐矿车移动?CM
B | 18 | 猜猜我是谁 | 猜猜我是谁
B | 19 | 洞穴世界 | 下到-64层 
B | 20 | 怪物猎人 | 击杀? ?次 
</details>

## ⚙️ 安装与使用

### 安装方式
1. **数据包+资源包**：
   - 将数据包文件夹放入世界目录的`datapacks`文件夹
   - 将资源包放入`resourcepacks`文件夹

2. **Mod方式**：
   - 安装对应版本的Mod加载器（推荐Fabric）
   - 将Mod文件放入`mods`文件夹

### 使用指令
- 启动游戏：`/function yws:game/start`
- 提前结束：`/function yws:game/end`

## 🏆 特色

- 支持多人同时游玩
- 随机事件系统增加游戏趣味性
- 积分排名机制激发竞争乐趣
- 丰富的事件类型(共37种)

## 📚 开发文档

- [API文档](doc/api.md)