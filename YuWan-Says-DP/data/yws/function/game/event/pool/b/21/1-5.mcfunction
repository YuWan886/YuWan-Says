# 1-5 名

summon marker 0 100 0 {Tags:["1st","sb"]}
summon marker 0 100 0 {Tags:["2nd","sb"]}
summon marker 0 100 0 {Tags:["3rd","sb"]}
summon marker 0 100 0 {Tags:["4th","sb"]}
summon marker 0 100 0 {Tags:["5th","sb"]}

scoreboard players operation @e[type=marker,tag=1st] ShootBeesTimes > @a ShootBeesTimes
execute as @a if score @s ShootBeesTimes = @e[type=marker,tag=1st,limit=1] ShootBeesTimes run tag @s add sb_1st

scoreboard players operation @e[type=marker,tag=2nd] ShootBeesTimes > @a[tag=!sb_1st] ShootBeesTimes
execute as @a if score @s ShootBeesTimes = @e[type=marker,tag=2nd,limit=1] ShootBeesTimes run tag @s add sb_2nd

scoreboard players operation @e[type=marker,tag=3rd] ShootBeesTimes > @a[tag=!sb_1st,tag=!sb_2nd] ShootBeesTimes
execute as @a if score @s ShootBeesTimes = @e[type=marker,tag=3rd,limit=1] ShootBeesTimes run tag @s add sb_3rd

scoreboard players operation @e[type=marker,tag=4th] ShootBeesTimes > @a[tag=!sb_1st,tag=!sb_2nd,tag=!sb_3rd] ShootBeesTimes
execute as @a if score @s ShootBeesTimes = @e[type=marker,tag=4th,limit=1] ShootBeesTimes run tag @s add sb_4th

scoreboard players operation @e[type=marker,tag=5th] ShootBeesTimes > @a[tag=!sb_1st,tag=!sb_2nd,tag=!sb_3rd,tag=!sb_4th] ShootBeesTimes
execute as @a if score @s ShootBeesTimes = @e[type=marker,tag=5th,limit=1] ShootBeesTimes run tag @s add sb_5th

kill @e[type=marker,tag=sb]

tellraw @a [\
           {text: "恭喜"},{selector: "@a[tag=sb_1st]"},{text: "获得"},{text: "§6\ud83c\udfc6§r第一名"},"\n",\
           {text: "恭喜"},{selector: "@a[tag=sb_2nd]"},{text: "获得"},{text: "\ud83e\udd48第二名"},"\n",\
           {text: "恭喜"},{selector: "@a[tag=sb_3rd]"},{text: "获得"},{text: "§n\ud83e\udd49§r第三名"},"\n",\
           {text: "恭喜"},{selector: "@a[tag=sb_4th]"},{text: "获得"},{text: "§c\ud83c\udfaf§r第四名"},"\n",\
           {text: "恭喜"},{selector: "@a[tag=sb_5th]"},{text: "获得"},{text: "§e\ud83c\udfc5§r第五名"}]
           

scoreboard players add @a[tag=sb_1st] Points 5
scoreboard players add @a[tag=sb_2nd] Points 4
scoreboard players add @a[tag=sb_3rd] Points 3
scoreboard players add @a[tag=sb_4th] Points 2
scoreboard players add @a[tag=sb_5th] Points 1

tag @a[tag=sb_1st] remove sb_1st
tag @a[tag=sb_2nd] remove sb_2nd
tag @a[tag=sb_3rd] remove sb_3rd
tag @a[tag=sb_4th] remove sb_4th
tag @a[tag=sb_5th] remove sb_5th