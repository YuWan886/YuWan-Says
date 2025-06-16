# A类
execute store result score #Game EventID run random value 1..12

execute if score #Game EventID matches 1 run function yws:game/event/pool/a/1/not_on_grass_block
execute if score #Game EventID matches 2 run function yws:game/event/pool/a/2/no_swimming
execute if score #Game EventID matches 3 run function yws:game/event/pool/a/3/no_jumping
execute if score #Game EventID matches 4 run function yws:game/event/pool/a/4/no_sneaking
execute if score #Game EventID matches 5 run function yws:game/event/pool/a/5/move
execute if score #Game EventID matches 6 run function yws:game/event/pool/a/6/no_w
execute if score #Game EventID matches 7 run function yws:game/event/pool/a/7/no_hurt
execute if score #Game EventID matches 8 run function yws:game/event/pool/a/8/no_crafting_table
execute if score #Game EventID matches 9 run function yws:game/event/pool/a/9/007
execute if score #Game EventID matches 10 run function yws:game/event/pool/a/10/fly