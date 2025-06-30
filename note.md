
## 计分板

### #System

 - GameStatus
 - EventCount
 - EventDuraTime
 - EventIntervalTime
 - GameTime
 - TeamMode
 - TeamCount
 - PlayerCount

### #Timer

 - EventDuraTime
 - EventIntervalTime
 - GameTime
 - Timer


### #Game

 - EventType
 - EventID
 - EventCount
 - PlayerCount
 - FinishCount

### #Team.Red/Yellow/Blue/Green

 - TeamStatus
 - Points


## 事件

类型 | 编号 | 名称 | 描述
--- | --- | --- | ---
A | 1 | 别踩草方块 | 不要踩在草方块上
A | 2 | 旱鸭子 |不要止游泳
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


添加事件需要改的函数文件

 - YuWan-Says-DP\data\yws\function\game\event\pool\
 - YuWan-Says-DP\data\yws\function\game\event\roll\
 - YuWan-Says-DP\data\yws\function\loop\event\check.mcfunction
 - YuWan-Says-DP\data\yws\predicate\event\
 - YuWan-Says-DP\data\yws\function\util\uninstall.mcfunction