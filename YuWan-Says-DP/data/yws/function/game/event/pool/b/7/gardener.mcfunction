# 园丁

title @a title {text: "事件刷新"}
title @a subtitle {text: "园丁"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "园丁"}]

scoreboard objectives add PlantWheat used:wheat_seeds
scoreboard players set @a PlantWheat 0
scoreboard players set #Game PlantWheat 0

execute store result score #Game PlantWheat run random value 4..8

tellraw @a [{text: "种植",color: "gray",italic:true},{score:{name:"#Game",objective:"PlantWheat"},color:"aqua"},{text: "个小麦种子"}]