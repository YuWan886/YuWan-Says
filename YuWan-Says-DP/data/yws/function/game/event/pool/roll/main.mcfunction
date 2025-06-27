# 选择事件
bossbar set yws:event_name players @a
bossbar set yws:interval_time players

playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1.5

execute store result score #Game EventType run random value 1..2

execute if score #Game EventType matches 1 run function yws:game/event/pool/roll/a
execute if score #Game EventType matches 2 run function yws:game/event/pool/roll/b
