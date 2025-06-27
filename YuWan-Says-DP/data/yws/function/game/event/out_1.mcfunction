
tag @s add out
title @s title {text: "触发事件",color: "red"}

tellraw @a [{selector: "@s"},{text: "触发了事件！"}]

# 粒子和音效
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1.0
particle minecraft:smoke ~ ~ ~ 0.5 0.5 0.5 0.05 30 normal @s
particle minecraft:falling_dust{block_state:"red_concrete_powder"} ~ ~2 ~ 0.3 0.3 0.3 0.05 15 normal @s

# 计算失败人数
scoreboard players add #Game OutCount 1
execute store result score #Game PlayerCount run list
execute if score #Game OutCount = #Game PlayerCount run function yws:game/event/end_1