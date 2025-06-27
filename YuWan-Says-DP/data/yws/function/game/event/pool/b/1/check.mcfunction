
execute as @a[tag=!finish,scores={CraftWoodenPickaxe=1..}] at @s run function yws:game/event/finish_2

scoreboard players set @a[tag=finish,scores={CraftWoodenPickaxe=1..}] CraftWoodenPickaxe 0