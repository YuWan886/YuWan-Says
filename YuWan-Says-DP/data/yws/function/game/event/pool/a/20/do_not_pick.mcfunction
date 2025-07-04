# 死手,别捡

title @a title {text: "事件刷新"}
title @a subtitle {text: "死手,别捡"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "死手,别捡"}]

# 1 cobblestone
# 2 crafting_table
# 3 torch
# 4 furnace
# 5 raw_iron
# 6 coal
# 7 rotten_flesh
# 8 string
# 9 dirt
# 10 wheat_seeds

scoreboard objectives add Pickedup dummy
scoreboard objectives add Pickedup_Cobblestone picked_up:cobblestone
scoreboard objectives add Pickedup_CraftingTabel picked_up:crafting_table
scoreboard objectives add Pickedup_Torch picked_up:torch
scoreboard objectives add Pickedup_Furnace picked_up:furnace
scoreboard objectives add Pickedup_RawIron picked_up:raw_iron
scoreboard objectives add Pickedup_Coal picked_up:coal
scoreboard objectives add Pickedup_RottenFlesh picked_up:rotten_flesh
scoreboard objectives add Pickedup_String picked_up:string
scoreboard objectives add Pickedup_Dirt picked_up:dirt
scoreboard objectives add Pickedup_WheatSeeds picked_up:wheat_seeds

execute store result score #Game Pickedup run random value 1..10

execute if score #Game Pickedup matches 1 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text:"不要拾取",color:"gray"},{text:"圆石",color:"aqua"}]
execute if score #Game Pickedup matches 2 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text:"不要拾取",color:"gray"},{text:"工作台",color:"aqua"}]
execute if score #Game Pickedup matches 3 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text:"不要拾取",color:"gray"},{text:"火把",color:"aqua"}]
execute if score #Game Pickedup matches 4 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text:"不要拾取",color:"gray"},{text:"熔炉",color:"aqua"}]
execute if score #Game Pickedup matches 5 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text:"不要拾取",color:"gray"},{text:"粗铁",color:"aqua"}]
execute if score #Game Pickedup matches 6 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text:"不要拾取",color:"gray"},{text:"煤炭",color:"aqua"}]
execute if score #Game Pickedup matches 7 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text:"不要拾取",color:"gray"},{text:"腐肉",color:"aqua"}]
execute if score #Game Pickedup matches 8 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text:"不要拾取",color:"gray"},{text:"线",color:"aqua"}]
execute if score #Game Pickedup matches 9 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text:"不要拾取",color:"gray"},{text:"泥土",color:"aqua"}]
execute if score #Game Pickedup matches 10 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text:"不要拾取",color:"gray"},{text:"小麦种子",color:"aqua"}]