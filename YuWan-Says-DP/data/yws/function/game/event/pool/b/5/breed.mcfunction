# 教培

title @a title {text: "事件刷新"}
title @a subtitle {text: "教培"}

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "教培"}]

scoreboard objectives add BreedingTimes custom:animals_bred {text: "繁殖次数"}
execute store result score #Game BreedingTimes run random value 1..5

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "繁殖动物",color: "gray"},{score:{name:"#Game",objective:"BreedingTimes"},color:"aqua"},{text: "次",color: "gray"}]
