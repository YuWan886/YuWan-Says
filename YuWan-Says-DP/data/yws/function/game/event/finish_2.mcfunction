

tag @s add finish
title @s title {text: "完成目标",color: "red"}

tellraw @a [{selector: "@s"},{text: "完成了目标！"}]

# 计算完成人数
scoreboard players add #Game FinishCount 1
execute store result score #Game PlayerCount run list
execute if score #Game FinishCount = #Game PlayerCount run function yws:game/event/end_2