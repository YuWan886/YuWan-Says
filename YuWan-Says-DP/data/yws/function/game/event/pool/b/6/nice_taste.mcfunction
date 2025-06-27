# 真香

title @a title {text: "事件刷新"}
title @a subtitle {text: "真香"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "真香"}]

scoreboard objectives add EatenRottenFleshTimes used:rotten_flesh
scoreboard players set @a EatenRottenFleshTimes 0
scoreboard players set #Game EatenRottenFleshTimes 0

execute store result score #Game EatenRottenFleshTimes run random value 4..8

tellraw @a [{text: "吃掉",color: "gray",italic:true},{score:{name:"#Game",objective:"EatenRottenFleshTimes"},color:"aqua"},{text: "个腐肉"}]