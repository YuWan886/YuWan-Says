# 1-3 名

execute at @r run summon marker ~ ~ ~ {Tags:["1st","sb"]}
execute at @r run summon marker ~ ~ ~ {Tags:["2nd","sb"]}
execute at @r run summon marker ~ ~ ~ {Tags:["3rd","sb"]}

scoreboard players operation @e[type=marker,tag=1st] ShootBeesTimes > @a ShootBeesTimes
execute as @a if score @s ShootBeesTimes = @e[type=marker,tag=1st,limit=1] ShootBeesTimes run tag @s add sb_1st

scoreboard players operation @e[type=marker,tag=2nd] ShootBeesTimes > @a[tag=!sb_1st] ShootBeesTimes
execute as @a if score @s ShootBeesTimes = @e[type=marker,tag=2nd,limit=1] ShootBeesTimes run tag @s add sb_2nd

scoreboard players operation @e[type=marker,tag=3rd] ShootBeesTimes > @a[tag=!sb_1st,tag=!sb_2nd] ShootBeesTimes
execute as @a if score @s ShootBeesTimes = @e[type=marker,tag=3rd,limit=1] ShootBeesTimes run tag @s add sb_3rd

kill @e[type=marker,tag=sb]

tellraw @a "\n\n=========="
tellraw @a [{text: "恭喜"},{selector: "@a[tag=sb_1st]"},{text: "获得"},{text: "第一名"}]
execute if score #Game PlayerCount matches 2.. run tellraw @a [{text: "恭喜"},{selector: "@a[tag=sb_2nd]"},{text: "获得"},{text: "第二名"}]
execute if score #Game PlayerCount matches 3.. run tellraw @a [{text: "恭喜"},{selector: "@a[tag=sb_3rd]"},{text: "获得"},{text: "第三名"}]
tellraw @a "\n\n=========="


scoreboard players add @a[tag=sb_1st] Points 3
scoreboard players add @a[tag=sb_2nd] Points 2
scoreboard players add @a[tag=sb_3rd] Points 1

tag @a[tag=sb_1st] remove sb_1st
tag @a[tag=sb_2nd] remove sb_2nd
tag @a[tag=sb_3rd] remove sb_3rd