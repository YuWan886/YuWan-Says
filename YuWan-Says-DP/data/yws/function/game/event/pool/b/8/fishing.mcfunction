# 钓鱼佬

title @a title {text: "事件刷新"}
title @a subtitle {text: "钓鱼佬"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "钓鱼佬"}]

scoreboard objectives add FishTimes custom:fish_caught {text:"捕鱼数"}
scoreboard players set @a FishTimes 0
scoreboard players set #Game FishTimes 0

execute store result score #Game FishTimes run random value 3..6

tellraw @a [{text: "捕鱼",color: "gray",italic:true},{score:{name:"#Game",objective:"FishTimes"},color:"aqua"},{text: "次"}]