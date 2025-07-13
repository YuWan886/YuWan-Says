# 个人模式

execute at @r run summon marker ~ ~ ~ {Tags:["settle","1st"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","2nd"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","3rd"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","4th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","5th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","6th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","7th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","8th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","9th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","10th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","11th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","12th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","13th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","14th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","15th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","16th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","17th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","18th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","19th"]}
execute at @r run summon marker ~ ~ ~ {Tags:["settle","20th"]}

# 1
scoreboard players operation @e[type=marker,tag=1st] Points > @a Points
execute as @a if score @s Points = @e[type=marker,tag=1st,limit=1] Points run tag @s add 1st
# 2
scoreboard players operation @e[type=marker,tag=2nd] Points > @a[tag=!1st] Points
execute as @a if score @s Points = @e[type=marker,tag=2nd,limit=1] Points run tag @s add 2nd
# 3
scoreboard players operation @e[type=marker,tag=3rd] Points > @a[tag=!1st,tag=!2nd] Points
execute as @a if score @s Points = @e[type=marker,tag=3rd,limit=1] Points run tag @s add 3rd
# 4
scoreboard players operation @e[type=marker,tag=4th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd] Points
execute as @a if score @s Points = @e[type=marker,tag=4th,limit=1] Points run tag @s add 4th
# 5
scoreboard players operation @e[type=marker,tag=5th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th] Points
execute as @a if score @s Points = @e[type=marker,tag=5th,limit=1] Points run tag @s add 5th
# 6
scoreboard players operation @e[type=marker,tag=6th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th] Points
execute as @a if score @s Points = @e[type=marker,tag=6th,limit=1] Points run tag @s add 6th
# 7
scoreboard players operation @e[type=marker,tag=7th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th] Points
execute as @a if score @s Points = @e[type=marker,tag=7th,limit=1] Points run tag @s add 7th
# 8
scoreboard players operation @e[type=marker,tag=8th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th,tag=!7th] Points
execute as @a if score @s Points = @e[type=marker,tag=8th,limit=1] Points run tag @s add 8th
# 9
scoreboard players operation @e[type=marker,tag=9th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th,tag=!7th,tag=!8th] Points
execute as @a if score @s Points = @e[type=marker,tag=9th,limit=1] Points run tag @s add 9th
# 10
scoreboard players operation @e[type=marker,tag=10th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th,tag=!7th,tag=!8th,tag=!9th] Points
execute as @a if score @s Points = @e[type=marker,tag=10th,limit=1] Points run tag @s add 10th
# 11
scoreboard players operation @e[type=marker,tag=11th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th,tag=!7th,tag=!8th,tag=!9th,tag=!10th] Points
execute as @a if score @s Points = @e[type=marker,tag=11th,limit=1] Points run tag @s add 11th
# 12
scoreboard players operation @e[type=marker,tag=12th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th,tag=!7th,tag=!8th,tag=!9th,tag=!10th,tag=!11th] Points
execute as @a if score @s Points = @e[type=marker,tag=12th,limit=1] Points run tag @s add 12th
# 13
scoreboard players operation @e[type=marker,tag=13th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th,tag=!7th,tag=!8th,tag=!9th,tag=!10th,tag=!11th,tag=!12th] Points
execute as @a if score @s Points = @e[type=marker,tag=13th,limit=1] Points run tag @s add 13th
# 14
scoreboard players operation @e[type=marker,tag=14th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th,tag=!7th,tag=!8th,tag=!9th,tag=!10th,tag=!11th,tag=!12th,tag=!13th] Points
execute as @a if score @s Points = @e[type=marker,tag=14th,limit=1] Points run tag @s add 14th
# 15
scoreboard players operation @e[type=marker,tag=15th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th,tag=!7th,tag=!8th,tag=!9th,tag=!10th,tag=!11th,tag=!12th,tag=!13th,tag=!14th] Points
execute as @a if score @s Points = @e[type=marker,tag=15th,limit=1] Points run tag @s add 15th
# 16
scoreboard players operation @e[type=marker,tag=16th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th,tag=!7th,tag=!8th,tag=!9th,tag=!10th,tag=!11th,tag=!12th,tag=!13th,tag=!14th,tag=!15th] Points
execute as @a if score @s Points = @e[type=marker,tag=16th,limit=1] Points run tag @s add 16th
# 17
scoreboard players operation @e[type=marker,tag=17th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th,tag=!7th,tag=!8th,tag=!9th,tag=!10th,tag=!11th,tag=!12th,tag=!13th,tag=!14th,tag=!15th,tag=!16th] Points
execute as @a if score @s Points = @e[type=marker,tag=17th,limit=1] Points run tag @s add 17th
# 18
scoreboard players operation @e[type=marker,tag=18th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th,tag=!7th,tag=!8th,tag=!9th,tag=!10th,tag=!11th,tag=!12th,tag=!13th,tag=!14th,tag=!15th,tag=!16th,tag=!17th] Points
execute as @a if score @s Points = @e[type=marker,tag=18th,limit=1] Points run tag @s add 18th
# 19
scoreboard players operation @e[type=marker,tag=19th] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th,tag=!7th,tag=!8th,tag=!9th,tag=!10th,tag=!11th,tag=!12th,tag=!13th,tag=!14th,tag=!15th,tag=!16th,tag=!17th,tag=!18th] Points
execute as @a if score @s Points = @e[type=marker,tag=19th,limit=1] Points run tag @s add 19th
# 20
scoreboard players operation @e[type=marker,tag=20] Points > @a[tag=!1st,tag=!2nd,tag=!3nd,tag=!4th,tag=!5th,tag=!6th,tag=!7th,tag=!8th,tag=!9th,tag=!10th,tag=!11th,tag=!12th,tag=!13th,tag=!14th,tag=!15th,tag=!16th,tag=!17th,tag=!18th,tag=!19th] Points
execute as @a if score @s Points = @e[type=marker,tag=20th,limit=1] Points run tag @s add 20th

kill @e[type=marker,tag=settle]

tellraw @a [{text: "恭喜 "},{selector: "@a[tag=1st]"}," - ",{score:{name:"@a[tag=1st]",objective:"Points"}},{text: " 获得"},{text: "第1名"}]
execute if score #Game PlayerCount matches 2.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=2nd]"}," - ",{score:{name:"@a[tag=2nd]",objective:"Points"}},{text: " 获得"},{text: "第2名"}]
execute if score #Game PlayerCount matches 3.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=3re]"}," - ",{score:{name:"@a[tag=3rd]",objective:"Points"}},{text: " 获得"},{text: "第3名"}]
execute if score #Game PlayerCount matches 4.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=4th]"}," - ",{score:{name:"@a[tag=4th]",objective:"Points"}},{text: " 获得"},{text: "第4名"}]
execute if score #Game PlayerCount matches 5.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=5th]"}," - ",{score:{name:"@a[tag=5th]",objective:"Points"}},{text: " 获得"},{text: "第5名"}]
execute if score #Game PlayerCount matches 6.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=6th]"}," - ",{score:{name:"@a[tag=6th]",objective:"Points"}},{text: " 获得"},{text: "第6名"}]
execute if score #Game PlayerCount matches 7.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=7th]"}," - ",{score:{name:"@a[tag=7th]",objective:"Points"}},{text: " 获得"},{text: "第7名"}]
execute if score #Game PlayerCount matches 8.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=8th]"}," - ",{score:{name:"@a[tag=8th]",objective:"Points"}},{text: " 获得"},{text: "第8名"}]
execute if score #Game PlayerCount matches 9.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=9th]"}," - ",{score:{name:"@a[tag=9th]",objective:"Points"}},{text: " 获得"},{text: "第9名"}]
execute if score #Game PlayerCount matches 10.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=10th]"}," - ",{score:{name:"@a[tag=10th]",objective:"Points"}},{text: " 获得"},{text: "第10名"}]
execute if score #Game PlayerCount matches 11.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=11th]"}," - ",{score:{name:"@a[tag=11th]",objective:"Points"}},{text: " 获得"},{text: "第11名"}]
execute if score #Game PlayerCount matches 12.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=12th]"}," - ",{score:{name:"@a[tag=12th]",objective:"Points"}},{text: " 获得"},{text: "第12名"}]
execute if score #Game PlayerCount matches 13.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=13th]"}," - ",{score:{name:"@a[tag=13th]",objective:"Points"}},{text: " 获得"},{text: "第13名"}]
execute if score #Game PlayerCount matches 14.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=14th]"}," - ",{score:{name:"@a[tag=14th]",objective:"Points"}},{text: " 获得"},{text: "第14名"}]
execute if score #Game PlayerCount matches 15.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=15th]"}," - ",{score:{name:"@a[tag=15th]",objective:"Points"}},{text: " 获得"},{text: "第15名"}]
execute if score #Game PlayerCount matches 16.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=16th]"}," - ",{score:{name:"@a[tag=16th]",objective:"Points"}},{text: " 获得"},{text: "第16名"}]
execute if score #Game PlayerCount matches 17.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=17th]"}," - ",{score:{name:"@a[tag=17th]",objective:"Points"}},{text: " 获得"},{text: "第17名"}]
execute if score #Game PlayerCount matches 18.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=18th]"}," - ",{score:{name:"@a[tag=18th]",objective:"Points"}},{text: " 获得"},{text: "第18名"}]
execute if score #Game PlayerCount matches 19.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=19th]"}," - ",{score:{name:"@a[tag=19th]",objective:"Points"}},{text: " 获得"},{text: "第19名"}]
execute if score #Game PlayerCount matches 20.. run tellraw @a [{text: "恭喜 "},{selector: "@a[tag=20th]"}," - ",{score:{name:"@a[tag=20th]",objective:"Points"}},{text: " 获得"},{text: "第20名"}]

title @a times 10t 3s 8t
title @a title [{text: "游戏结束！"}]
title @a subtitle [{text: "获胜者：",color:"gold"},{selector:"@a[tag=1st]",color:"#ffcc00"}]

tag @a[tag=1st] remove 1st
tag @a[tag=2nd] remove 2nd
tag @a[tag=3rd] remove 3rd
tag @a[tag=4th] remove 4th
tag @a[tag=5th] remove 5th
tag @a[tag=6th] remove 6th
tag @a[tag=7th] remove 7th
tag @a[tag=8th] remove 8th
tag @a[tag=9th] remove 9th
tag @a[tag=10th] remove 10th
tag @a[tag=11th] remove 11th
tag @a[tag=12th] remove 12th
tag @a[tag=13th] remove 13th
tag @a[tag=14th] remove 14th
tag @a[tag=15th] remove 15th
tag @a[tag=16th] remove 16th
tag @a[tag=17th] remove 17th
tag @a[tag=18th] remove 18th
tag @a[tag=19th] remove 19th
tag @a[tag=20th] remove 20th