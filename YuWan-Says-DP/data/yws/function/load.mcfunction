# 
tellraw @a {text: "已加载 Yuwan Says 数据包！"}

scoreboard objectives add GameStatus dummy {text: "游戏状态"}
scoreboard objectives add EventID dummy {text: "事件ID"}
scoreboard objectives add EventType dummy {text: "事件类型"}
scoreboard objectives add EventCount dummy {text: "事件数"}
scoreboard objectives add EventDuraTime dummy {text: "事件持续时间"}
scoreboard objectives add EventIntervalTime dummy {text: "事件间隔时间"}
scoreboard objectives add Points dummy {text: "积分"}
scoreboard objectives add GameTime dummy {text: "游戏时间"}
scoreboard objectives add Timer dummy
scoreboard objectives add PlayerCount dummy {text: "玩家数"}
scoreboard objectives add OutCount dummy {text: "玩家淘汰数"}
scoreboard objectives add FinishCount dummy {text: "玩家完成数"}

scoreboard objectives add GameRule_Keep dummy {text:"保留物品栏"}

scoreboard objectives add TimeRate dummy

# 队伍
scoreboard objectives add TeamMode dummy {text: "队伍模式"}
scoreboard objectives add TeamCount dummy {text: "队伍数量"}
scoreboard objectives add TeamStatus dummy {text: "队伍状态"}

function yws:settings/default
function yws:settings/team/setup

forceload add 0 0 2 2