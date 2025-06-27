# 快乐恶魂冲鸭

title @a title {text: "事件刷新"}
title @a subtitle {text: "快乐恶魂冲鸭"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "快乐恶魂冲鸭"}]

scoreboard objectives add HappyGhastRideCm custom:happy_ghast_one_cm
scoreboard players set @a HappyGhastRideCm 0
scoreboard players set #Game HappyGhastRideCm 0

execute store result score #Game HappyGhastRideCm run random value 64..256

tellraw @a [{text: "骑乘快乐恶魂移动",color: "gray",italic:true},{score:{name:"#Game",objective:"HappyGhastRideCm"},color:"aqua"},{text: "格"}]