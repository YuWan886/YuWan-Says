# 1-3 名

execute at @r run summon marker ~ ~ ~ {Tags:["1st","gold_rush"]}
execute at @r run summon marker ~ ~ ~ {Tags:["2nd","gold_rush"]}
execute at @r run summon marker ~ ~ ~ {Tags:["3rd","gold_rush"]}

scoreboard players operation @e[type=marker,tag=1st] MinedGoldAll > @a MinedGoldAll
execute as @a if score @s MinedGoldAll = @e[type=marker,tag=1st,limit=1] MinedGoldAll run tag @s add gold_rush_1st

scoreboard players operation @e[type=marker,tag=2nd] MinedGoldAll > @a[tag=!gold_rush_1st] MinedGoldAll
execute as @a if score @s MinedGoldAll = @e[type=marker,tag=2nd,limit=1] MinedGoldAll run tag @s add gold_rush_2nd

scoreboard players operation @e[type=marker,tag=3rd] MinedGoldAll > @a[tag=!gold_rush_1st,tag=!gold_rush_2nd] MinedGoldAll
execute as @a if score @s MinedGoldAll = @e[type=marker,tag=3rd,limit=1] MinedGoldAll run tag @s add gold_rush_3rd

kill @e[type=marker,tag=gold_rush]

tellraw @a "\n\n=========="
tellraw @a [{text: "恭喜"},{selector: "@a[tag=gold_rush_1st]"},{text: "获得"},{text: "第一名"}]
execute if score #Game PlayerCount matches 2.. run tellraw @a [{text: "恭喜"},{selector: "@a[tag=gold_rush_2nd]"},{text: "获得"},{text: "第二名"}]
execute if score #Game PlayerCount matches 3.. run tellraw @a [{text: "恭喜"},{selector: "@a[tag=gold_rush_3rd]"},{text: "获得"},{text: "第三名"}]
tellraw @a "\n\n=========="

scoreboard players add @a[tag=gold_rush_1st] Points 3
scoreboard players add @a[tag=gold_rush_2nd] Points 2
scoreboard players add @a[tag=gold_rush_3rd] Points 1

tag @a[tag=gold_rush_1st] remove gold_rush_1st
tag @a[tag=gold_rush_2nd] remove gold_rush_2nd
tag @a[tag=gold_rush_3rd] remove gold_rush_3rd

scoreboard players set @a MinedGoldOre 0
scoreboard players set @a MinedDeepGoldOre 0
scoreboard players set @a MinedGoldAll 0
scoreboard players set @a PlacedGoldOre 0
scoreboard players set @a PlacedDeepGoldOre 0