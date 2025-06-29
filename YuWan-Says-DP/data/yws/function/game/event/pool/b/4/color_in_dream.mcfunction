# 梦中的颜色

title @a title {text: "事件刷新"}
title @a subtitle {text: "梦中的颜色"}

tellraw @a ["",{text:"[Tip]",color:"yellow"},{text: "挖到钻石",color: "gray",italic:true}]

bossbar set yws:event_name name [{text: "当前事件："},{text: "梦中的颜色"}]

scoreboard objectives add MinedDiamondOre mined:diamond_ore
scoreboard objectives add MinedDeepDiamondOre mined:deepslate_diamond_ore

scoreboard players set @a MinedDiamondOre 0
scoreboard players set @a MinedDeepDiamondOre 0