# 冲刺冲刺♿

title @a title {text: "事件刷新"}
title @a subtitle {text: "冲刺冲刺♿"}

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "冲刺冲刺♿"}]

scoreboard objectives add MinecartRideCm custom:minecart_one_cm {text: "乘坐矿车移动距离"}
execute store result score #Game MinecartRideCm run random value 6400..25600

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "乘坐矿车移动至少",color: "gray"},{score:{name:"#Game",objective:"MinecartRideCm"},color:"aqua"},{text: "cm",color: "gray"}]