# 教培

title @a title {text: "事件刷新"}
title @a subtitle {text: "教培"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "教培"}]

scoreboard objectives add BreedingTimes custom:animals_bred {text: "繁殖次数"}
scoreboard players set @a BreedingTimes 0
scoreboard players set #Game BreedingTimes 0

execute store result score #Game BreedingTimes run random value 1..5

tellraw @a [{text: "繁殖动物",color: "gray",italic:true},{score:{name:"#Game",objective:"BreedingTimes"},color:"aqua"},{text: "次"}]
