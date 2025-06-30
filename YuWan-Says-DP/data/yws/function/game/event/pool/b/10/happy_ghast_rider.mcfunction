# 快乐恶魂冲鸭

title @a title {text: "事件刷新"}
title @a subtitle {text: "快乐恶魂冲鸭"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "快乐恶魂冲鸭"}]

scoreboard objectives add HappyGhastRideCm custom:happy_ghast_one_cm {text:"骑乘快乐恶魂移动距离"}
scoreboard players set @a HappyGhastRideCm 0
scoreboard players set #Game HappyGhastRideCm 0

execute store result score #Game HappyGhastRideCm run random value 6400..25600

tellraw @a ["",{text:"[Tip]",color:"yellow"},{text: "骑乘快乐恶魂移动至少",color: "gray",italic:true},{score:{name:"#Game",objective:"HappyGhastRideCm"},color:"aqua"},{text: "cm"}]

give @a happy_ghast_spawn_egg[entity_data={id:"happy_ghast",equipment:{body:{count:1,id:"minecraft:magenta_harness"},saddle:{count:1,id:"minecraft:saddle"}}}]