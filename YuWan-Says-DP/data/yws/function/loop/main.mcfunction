
scoreboard players add #Timer Timer 1

# 事件间隔时间 -1s
execute if score #Timer EventIntervalTime matches 1.. if score #Timer Timer matches 20 run scoreboard players remove #Timer EventIntervalTime 1
# 事件持续时间 -1s
execute if score #Timer EventIntervalTime matches 0 if score #Timer EventDuraTime matches 1.. if score #Timer Timer matches 20 run scoreboard players remove #Timer EventDuraTime 1

execute if score #Timer Timer matches 20 run scoreboard players set #Timer Timer 0

# 事件bossbar
execute if score #Timer EventDuraTime matches 0.. store result bossbar yws:event_name value run scoreboard players get #Timer EventDuraTime
execute if score #Timer EventIntervalTime matches 0.. store result bossbar yws:interval_time value run scoreboard players get #Timer EventIntervalTime
# 事件结束
execute if score #Game EventType matches 1 if score #Timer EventDuraTime matches 0 run function yws:game/event/end_1
execute if score #Game EventType matches 2 if score #Timer EventDuraTime matches 0 run function yws:game/event/end_2
# 事件轮换
execute if score #Game EventType matches 0 if score #Timer EventIntervalTime matches 0 run function yws:game/event/pool/roll/main
# 事件检测
function yws:loop/event/check