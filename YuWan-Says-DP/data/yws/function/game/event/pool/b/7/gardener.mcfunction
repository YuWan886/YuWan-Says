# 园丁

title @a title {text: "事件刷新"}
title @a subtitle {text: "园丁"}

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "园丁"}]

scoreboard objectives add PlantWheat used:wheat_seeds {text: "种植小麦种子数"}
execute store result score #Game PlantWheat run random value 4..8

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "种植",color: "gray"},{score:{name:"#Game",objective:"PlantWheat"},color:"aqua"},{text: "个小麦种子",color: "gray"}]