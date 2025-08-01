# 100种死法

title @a title {text: "事件刷新"}
title @a subtitle {text: "100种死法"}

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "100种死法"}]


# 1 Zombie
# 2 Skeleton
# 3 Creeper
# 4 Player
# 5 Anvil
# 6 Cactus
# 7 Campfire
# 8 Drown
# 9 Explosion
# 10 InWall
# 11 Starve
# 12 Arrow
# 13 Stalactite

scoreboard objectives add Killedby dummy {text: "死法"}
scoreboard objectives add Killedby_Zombie killed_by:zombie
scoreboard objectives add Killedby_Skeleton killed_by:skeleton
scoreboard objectives add Killedby_Creeper killed_by:creeper
scoreboard objectives add Killedby_Player killed_by:player

advancement revoke @a only yws:event/b/100_ways_to_die/arrow
advancement revoke @a only yws:event/b/100_ways_to_die/anvil
advancement revoke @a only yws:event/b/100_ways_to_die/cactus
advancement revoke @a only yws:event/b/100_ways_to_die/campfire
advancement revoke @a only yws:event/b/100_ways_to_die/drown
advancement revoke @a only yws:event/b/100_ways_to_die/explosion
advancement revoke @a only yws:event/b/100_ways_to_die/in_wall
advancement revoke @a only yws:event/b/100_ways_to_die/starve
advancement revoke @a only yws:event/b/100_ways_to_die/falling_stalactite

execute store result score #Game Killedby run random value 1..11

execute if score #Game Killedby matches 1 run tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "被僵尸击杀",color: "gray"}]
execute if score #Game Killedby matches 2 run tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "被骷髅击杀",color: "gray"}]
execute if score #Game Killedby matches 3 run tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "被苦力怕击杀",color: "gray"}]
execute if score #Game Killedby matches 4 run tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "被玩家击杀",color: "gray"}]
execute if score #Game Killedby matches 5 run tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "被铁砧击杀",color: "gray"}]
execute if score #Game Killedby matches 6 run tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "被仙人掌击杀",color: "gray"}]
execute if score #Game Killedby matches 7 run tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "被营火击杀",color: "gray"}]
execute if score #Game Killedby matches 8 run tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "溺水",color: "gray"}]
execute if score #Game Killedby matches 9 run tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "被炸死",color: "gray"}]
execute if score #Game Killedby matches 10 run tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "窒息",color: "gray"}]
execute if score #Game Killedby matches 11 run tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "饿死",color: "gray"}]
execute if score #Game Killedby matches 12 run tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "被弓箭击杀",color: "gray"}]
execute if score #Game Killedby matches 13 run tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "被下落的滴水石锥击杀",color: "gray"}]