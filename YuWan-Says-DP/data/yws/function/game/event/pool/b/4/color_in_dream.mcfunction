# 梦中的颜色

title @a title {text: "事件刷新"}
title @a subtitle {text: "梦中的颜色"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "挖到钻石",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "梦中的颜色"}]

scoreboard objectives add MinedDiamondOre mined:diamond_ore
scoreboard objectives add MinedDeepDiamondOre mined:deepslate_diamond_ore
