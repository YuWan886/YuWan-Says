# 优秀的水手

title @a title {text: "事件刷新"}
title @a subtitle {text: "优秀的水手"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "优秀的水手"}]

scoreboard objectives add BoatRideCm custom:boat_one_cm
scoreboard players set @a BoatRideCm 0
scoreboard players set #Game BoatRideCm 0

execute store result score #Game BoatRideCm run random value 48..128

tellraw @a [{text: "乘船移动",color: "gray",italic:true},{score:{name:"#Game",objective:"BoatRideCm"},color:"aqua"},{text: "格"}]