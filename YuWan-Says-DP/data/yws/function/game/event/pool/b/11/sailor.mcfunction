# 优秀的水手

title @a title {text: "事件刷新"}
title @a subtitle {text: "优秀的水手"}

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "优秀的水手"}]

scoreboard objectives add BoatRideCm custom:boat_one_cm {text: "乘船移动距离"}
execute store result score #Game BoatRideCm run random value 9600..64000

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "乘船移动至少",color: "gray"},{score:{name:"#Game",objective:"BoatRideCm"},color:"aqua"},{text: "cm",color: "gray"}]