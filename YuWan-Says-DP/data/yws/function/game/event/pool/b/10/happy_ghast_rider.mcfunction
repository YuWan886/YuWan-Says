# 快乐恶魂冲鸭

title @a title {text: "事件刷新"}
title @a subtitle {text: "快乐恶魂冲鸭"}

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "快乐恶魂冲鸭"}]

scoreboard objectives add HappyGhastRideCm custom:happy_ghast_one_cm {text: "骑乘快乐恶魂移动距离"}
execute store result score #Game HappyGhastRideCm run random value 6400..64000

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "骑乘快乐恶魂移动至少",color: "gray"},{score:{name:"#Game",objective:"HappyGhastRideCm"},color:"aqua"},{text: "cm",color: "gray"}]

give @a happy_ghast_spawn_egg[entity_data={id:"happy_ghast",equipment:{body:{count:1,id:"minecraft:magenta_harness"},saddle:{count:1,id:"minecraft:saddle"}},Tags:["event"]}]