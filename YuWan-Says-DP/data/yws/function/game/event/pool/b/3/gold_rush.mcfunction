# 淘金热

title @a title {text: "事件刷新"}
title @a subtitle {text: "淘金热"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "快去挖金吧！",color: "gray",bold:true}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "淘金热"}]

scoreboard objectives add MinedGoldOre mined:gold_ore
scoreboard objectives add MinedDeepGoldOre mined:deepslate_gold_ore
scoreboard objectives add MinedGoldAll dummy {text: "淘金数",color: "gold",bold:true}
scoreboard objectives add PlacedGoldOre used:gold_ore
scoreboard objectives add PlacedDeepGoldOre used:deepslate_gold_ore

scoreboard players add #Timer EventDuraTime 1