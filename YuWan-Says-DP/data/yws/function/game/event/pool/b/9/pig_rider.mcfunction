# 猪猪骑士

title @a title {text: "事件刷新"}
title @a subtitle {text: "猪猪骑士"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "猪猪骑士"}]

scoreboard objectives add PigRideCm custom:pig_one_cm {text: "骑猪移动距离"}
execute store result score #Game PigRideCm run random value 4800..25600

tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "骑猪移动至少",color: "gray"},{score:{name:"#Game",objective:"PigRideCm"},color:"aqua"},{text: "cm",color: "gray"}]

give @a pig_spawn_egg[entity_data={id:"pig",equipment:{saddle:{"id":"saddle",count:1}},Tags:["event"]}]