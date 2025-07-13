# 木镐耐久是？

title @a title {text: "事件刷新"}
title @a subtitle {text: "木镐耐久是？"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "挖爆一个木镐",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "木镐耐久是？"}]

scoreboard objectives add UsedWoodenPickaxe used:wooden_pickaxe {text:"使用木镐次数"}