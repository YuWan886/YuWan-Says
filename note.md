
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

### Timer

 - EventDuraTime
 - EventIntervalTime
 - GameTime
 - Timer
 - PlayerCount
 - EventType

### Game

 - EventID
 - EventCount

### #Team.Red/Yellow/Blue/Green

 - TeamStatus
 - Points


## 事件

类型 | 名称 | 描述
--- | --- | ---
A | 别踩草方块 | 禁止踩在草方块上
A | 旱鸭子 | 禁止游泳
A | 断腿 | 禁止跳跃
A | 禁止潜行 | 禁止潜行(蹲下)
A | No "W" | 禁止按W键移动
A | 玻璃体质 | 禁止受到伤害
A | 禁工作台 | 禁止使用工作台
A | 动起来！ | 必须保持移动
A | 飞起来！ | 装逼让你飞起来！
A | 007 | 社畜

-----|-----|-----
B | 制作木镐 | 必须制作木镐
B | 淘金热 | 快去挖金吧！

添加事件需要改的函数文件

 - YuWan-Says-DP\data\yws\function\game\event\pool\
 - YuWan-Says-DP\data\yws\function\game\event\roll\
 - YuWan-Says-DP\data\yws\function\loop\event\check.mcfunction
 - YuWan-Says-DP\data\yws\predicate\event\