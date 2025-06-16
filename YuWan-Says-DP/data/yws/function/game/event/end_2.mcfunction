# 事件结束 2

scoreboard players add @a[tag=finish] Points 1
tag @a[tag=finish] remove finish

scoreboard players operation #Timer EventIntervalTime = #System EventIntervalTime
scoreboard players operation #Timer EventDuraTime = #System EventDuraTime
scoreboard players set #Game EventID 0
scoreboard players add #Game EventCount 1
scoreboard players set #Game FinishCount 0

scoreboard players set @a CraftWoodenAxe 0

bossbar set yws:event_name players
bossbar set yws:interval_time players @a

# 结束游戏
execute if score #Game EventCount = #System EventCount run return run function yws:game/end


