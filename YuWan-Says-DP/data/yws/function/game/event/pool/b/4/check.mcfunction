execute as @a[tag=!finish,scores={MinedDiamondOre=1..}] at @s run function yws:game/event/finish_2
execute as @a[tag=!finish,scores={MinedDeepDiamondOre=1..}] at @s run function yws:game/event/finish_2

scoreboard players set @a[tag=finish,scores={MinedDiamondOre=1..}] MinedDiamondOre 0
scoreboard players set @a[tag=finish,scores={MinedDeepDiamondOre=1..}] MinedDeepDiamondOre 0