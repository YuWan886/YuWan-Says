# 淘金热

title @a title {text: "事件刷新"}
title @a subtitle {text: "淘金热"}

tellraw @a ["",{text:"[Tip]",color:"yellow"},{text:"快去挖金吧！"}]

bossbar set yws:event_name name [{text: "当前事件："},{text: "淘金热"}]

scoreboard objectives add MinedGoldOre mined:gold_ore
scoreboard objectives add MinedDeepGoldOre mined:deepslate_gold_ore
scoreboard objectives add MinedGoldAll dummy {text: "淘金数",color: "gold",bold:true}
scoreboard objectives add PlacedGoldOre used:gold_ore
scoreboard objectives add PlacedDeepGoldOre used:deepslate_gold_ore

scoreboard players add #Timer EventDuraTime 1