execute as @a[tag=!finish] store result score @s Pose_y run data get entity @s Pos.[1] 1 
execute as @a[tag=!finish,scores={Pose_y=..-63}] at @s run function yws:game/event/finish_2