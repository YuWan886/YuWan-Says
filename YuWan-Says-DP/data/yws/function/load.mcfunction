# 
tellraw @a {text: "已加载 Yuwan Says 数据包！"}

scoreboard objectives add GameStatus dummy {text: "游戏状态"}
scoreboard objectives add EventID dummy
scoreboard objectives add EventType dummy
scoreboard objectives add EventCount dummy {text: "事件数"}
scoreboard objectives add EventDuraTime dummy {text: "事件持续时间"}
scoreboard objectives add EventIntervalTime dummy {text: "事件间隔时间"}
scoreboard objectives add Points dummy {text: "积分"}
scoreboard objectives add GameTime dummy {text: "游戏时间"}
scoreboard objectives add Timer dummy
scoreboard objectives add PlayerCount dummy {text: "玩家数"}
scoreboard objectives add OutCount dummy
scoreboard objectives add FinishCount dummy

scoreboard objectives add IsHurt custom:damage_taken
scoreboard objectives add UsedRraftingTable custom:interact_with_crafting_table
scoreboard objectives add KilledAnimals.Cow killed:cow
scoreboard objectives add CraftWoodenAxe crafted:wooden_pickaxe
scoreboard objectives add Death_007 deathCount
scoreboard objectives add TimeRate dummy
scoreboard objectives add MinedGoldOre mined:gold_ore
scoreboard objectives add MinedDeepGoldOre mined:deepslate_gold_ore
scoreboard objectives add MinedGoldAll dummy {text: "淘金数",color: "gold",bold:true}
scoreboard objectives add PlacedGoldOre used:gold_ore
scoreboard objectives add PlacedDeepGoldOre used:deepslate_gold_ore

# 队伍
scoreboard objectives add TeamMode dummy {text: "队伍模式"}
scoreboard objectives add TeamCount dummy {text: "队伍数量"}
scoreboard objectives add TeamStatus dummy

function yws:settings/default
function yws:settings/team/setup

forceload add 0 0 2 2