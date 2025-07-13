
summon zombie ~ ~5 ~ {Tags:["uhc_mob"],equipment:{head:{id:"leather_helmet"}}}
summon skeleton ~1 ~ ~ {Tags:["uhc_mob"],equipment:{head:{id:"leather_helmet"}}}
summon creeper ~ ~ ~-1 {Fuse:40}

execute as @e[tag=uhc_mob] at @s run function yws:game/event/pool/a/16/spread_mob