# UHC？

title @a title {text: "事件刷新"}
title @a subtitle {text: "UHC？"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "活下去",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "UHC？"}]

scoreboard objectives add IsDead deathCount {text: "死亡检测"}

gamerule naturalRegeneration false
gamerule forgiveDeadPlayers false
gamerule universalAnger true