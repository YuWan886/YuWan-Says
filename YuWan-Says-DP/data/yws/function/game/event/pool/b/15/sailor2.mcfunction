# 优秀的水手 II

title @a title {text: "事件刷新"}
title @a subtitle {text: "优秀的水手 II"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "优秀的水手 II"}]

scoreboard objectives add SwimCm custom:swim_one_cm {text: "游泳距离"}
execute store result score #Game SwimCm run random value 9600..25600

tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "游泳移动至少",color: "gray"},{score:{name:"#Game",objective:"SwimCm"},color:"aqua"},{text: "cm",color: "gray"}]