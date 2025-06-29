execute as @a[tag=!out] store result score @s FallDistance run data get entity @s fall_distance 1

execute as @a[tag=!out] at @s if score @s FallDistance matches 3.. run function yws:game/event/out_1