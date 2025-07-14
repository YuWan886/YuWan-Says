# A类
execute store result score #Game EventID run random value 1..25

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
execute if score #Game EventID matches 15 run function yws:game/event/pool/a/15/quiet_as_a_virgin
execute if score #Game EventID matches 16 run function yws:game/event/pool/a/16/uhc
execute if score #Game EventID matches 17 run function yws:game/event/pool/a/17/no_offhand
execute if score #Game EventID matches 18 run function yws:game/event/pool/a/18/no_mainhand
execute if score #Game EventID matches 19 run function yws:game/event/pool/a/19/vampire
execute if score #Game EventID matches 20 run function yws:game/event/pool/a/20/do_not_pick
execute if score #Game EventID matches 21 run function yws:game/event/pool/a/21/no_hotbar
execute if score #Game EventID matches 22 run function yws:game/event/pool/a/22/not_in_water
execute if score #Game EventID matches 23 run function yws:game/event/pool/a/23/not_noground
execute if score #Game EventID matches 24 run function yws:game/event/pool/a/24/health_hp
execute if score #Game EventID matches 25 run function yws:game/event/pool/a/25/hot_potato