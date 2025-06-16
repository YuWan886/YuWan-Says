# 007

title @a title {text: "事件刷新"}
title @a subtitle {text: "007"}

tellraw @a {text: "生为社畜,死当鬼畜",color: "gray",italic:true}

bossbar set yws:event_name name [{text: "当前事件："},{text: "007"}]

scoreboard players set @a Death_007 0

effect give @a nausea 120 3 true
effect give @a slowness 120 2 true
effect give @a weakness 120 1 true
effect give @a mining_fatigue 40 1 true