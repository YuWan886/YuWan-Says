# BOOM

scoreboard players set #Timer PotatoTime 10

execute at @a[tag=hot_potato] run summon tnt ~ ~ ~ {fuse:1,explosion_power:10}
damage @a[tag=hot_potato,limit=1] 20 explosion

# 淘汰一人结束
execute as @a[tag=hot_potato] run function yws:game/event/out_1
function yws:game/event/end_1

tag @a[tag=hot_potato] remove hot_potato
function yws:game/event/pool/a/25/give_potato