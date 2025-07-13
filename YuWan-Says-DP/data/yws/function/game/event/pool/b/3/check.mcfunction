execute if score #Timer EventDuraTime matches 1 if score #Timer Timer matches 20 run function yws:game/event/pool/b/3/settlement

execute as @a run title @s subtitle [{text:"淘金数："},{score:{name:"@s",objective:"MinedGoldAll"},color:"gold"}]