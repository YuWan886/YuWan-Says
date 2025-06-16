
tag @s add out
title @s title {text: "触发事件",color: "red"}

tellraw @a [{selector: "@s"},{text: "触发了事件！"}]

# 计算失败人数
scoreboard players add #Game OutCount 1
execute store result score #Game PlayerCount run list
execute if score #Game OutCount = #Game PlayerCount run function yws:game/event/end_1