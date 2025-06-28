

tag @s add finish
title @s title {text: "完成目标",color: "green"}

tellraw @a [{selector: "@s"},{text: "完成了目标！"}]

# 粒子和音效
playsound minecraft:entity.player.levelup record @s ~ ~ ~ 1 1.2 1
particle minecraft:happy_villager ~ ~2 ~ 0.5 0.5 0.5 0.1 40 normal @s
particle minecraft:firework ~ ~2 ~ 0.3 0.3 0.3 0.09 15 normal @s

# 计算完成人数
scoreboard players add #Game FinishCount 1
execute store result score #Game PlayerCount run list
execute if score #Game FinishCount = #Game PlayerCount run function yws:game/event/end_2