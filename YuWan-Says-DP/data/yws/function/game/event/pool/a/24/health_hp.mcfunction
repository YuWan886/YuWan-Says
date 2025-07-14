# 健康的HP

title @a title {text: "事件刷新"}
title @a subtitle {text: "健康的HP"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "生命值不要低于10",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "健康的HP"}]

scoreboard objectives add HP health {text:"生命值"}
scoreboard objectives modify HP rendertype hearts
scoreboard objectives setdisplay list HP