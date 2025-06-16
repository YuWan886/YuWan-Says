# B类
execute store result score #Game EventID run random value 1..5

execute if score #Game EventID matches 1 run function yws:game/event/pool/b/1/craft_wooden_axe
execute if score #Game EventID matches 2 run function yws:game/event/pool/b/2/speed_up_time