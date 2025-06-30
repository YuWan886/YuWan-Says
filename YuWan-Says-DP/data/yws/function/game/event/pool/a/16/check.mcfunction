execute as @a[tag=!out,scores={IsDead=1..}] at @s run function yws:game/event/out_1

execute as @a[tag=!out] at @s if predicate yws:event/a/chance_0.0001 run function yws:game/event/pool/a/16/summon