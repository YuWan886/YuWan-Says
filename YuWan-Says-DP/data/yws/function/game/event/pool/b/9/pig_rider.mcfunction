# 猪猪骑士

title @a title {text: "事件刷新"}
title @a subtitle {text: "猪猪骑士"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "猪猪骑士"}]

scoreboard objectives add PigRideCm custom:pig_one_cm
scoreboard players set @a PigRideCm 0
scoreboard players set #Game PigRideCm 0

execute store result score #Game PigRideCm run random value 48..128

tellraw @a [{text: "骑猪移动",color: "gray",italic:true},{score:{name:"#Game",objective:"PigRideCm"},color:"aqua"},{text: "格"}]