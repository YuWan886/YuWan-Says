# 007

title @a title {text: "事件刷新"}
title @a subtitle {text: "007"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "生为社畜,死当鬼畜",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "007"}]

scoreboard objectives add IsDead deathCount {text: "死亡检测"}
scoreboard players set @a IsDead 0

effect give @a nausea 120 3 true
effect give @a slowness 120 2 true
effect give @a weakness 120 1 true
effect give @a mining_fatigue 40 1 true