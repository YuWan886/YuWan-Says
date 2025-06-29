# B类
execute store result score #Game EventID run random value 1..12

execute if score #Game EventID matches 1 run function yws:game/event/pool/b/1/craft_wooden_pickaxe
execute if score #Game EventID matches 2 run function yws:game/event/pool/roll/main
execute if score #Game EventID matches 3 run function yws:game/event/pool/b/3/gold_rush
execute if score #Game EventID matches 4 run function yws:game/event/pool/b/4/color_in_dream
execute if score #Game EventID matches 5 run function yws:game/event/pool/b/5/breed
execute if score #Game EventID matches 6 run function yws:game/event/pool/b/6/nice_taste
execute if score #Game EventID matches 7 run function yws:game/event/pool/b/7/gardener
execute if score #Game EventID matches 8 run function yws:game/event/pool/b/8/fishing
execute if score #Game EventID matches 9 run function yws:game/event/pool/b/9/pig_rider
execute if score #Game EventID matches 10 run function yws:game/event/pool/b/10/happy_ghast_rider
execute if score #Game EventID matches 11 run function yws:game/event/pool/b/11/boat_move
execute if score #Game EventID matches 12 run function yws:game/event/pool/b/12/100_ways_to_die