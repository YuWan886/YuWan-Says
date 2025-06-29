# A类
execute store result score #Game EventID run random value 1..14

execute if score #Game EventID matches 1 run function yws:game/event/pool/a/1/not_on_grass_block
execute if score #Game EventID matches 2 run function yws:game/event/pool/a/2/not_swimming
execute if score #Game EventID matches 3 run function yws:game/event/pool/a/3/not_jumping
execute if score #Game EventID matches 4 run function yws:game/event/pool/a/4/not_sneaking
execute if score #Game EventID matches 5 run function yws:game/event/pool/a/5/move
execute if score #Game EventID matches 6 run function yws:game/event/pool/a/6/not_w
execute if score #Game EventID matches 7 run function yws:game/event/pool/a/7/not_hurt
execute if score #Game EventID matches 8 run function yws:game/event/pool/a/8/not_crafting_table
execute if score #Game EventID matches 9 run function yws:game/event/pool/a/9/007
execute if score #Game EventID matches 10 run function yws:game/event/pool/a/10/fly
execute if score #Game EventID matches 11 run function yws:game/event/pool/a/11/not_eating
execute if score #Game EventID matches 12 run function yws:game/event/pool/a/12/not_open_chest
execute if score #Game EventID matches 13 run function yws:game/event/pool/a/13/stone_age
execute if score #Game EventID matches 14 run function yws:game/event/pool/a/14/acrophobia