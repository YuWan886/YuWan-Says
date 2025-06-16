# 结束游戏

scoreboard players set #System GameStatus 0
scoreboard players set #Game EventType 0
scoreboard players set #Game EventCount 0
scoreboard players set #Game EventID 0
scoreboard players set #Game OutCount 0
scoreboard players set #Game FinishCount 0
scoreboard players set @a Points 0
scoreboard objectives setdisplay sidebar

bossbar remove yws:event_name
bossbar remove yws:interval_time