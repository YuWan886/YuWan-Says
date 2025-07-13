# 恐高

title @a title {text: "事件刷新"}
title @a subtitle {text: "恐高"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "下落高度不要超过3格",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "恐高"}]

scoreboard objectives add FallDistance dummy {text: "下落高度"}