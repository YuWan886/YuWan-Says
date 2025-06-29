# 时间要开始加速了

title @a title {text: "事件刷新"}
title @a subtitle {text: "时间要开始加速了"}

tellraw @a ["",{text:"[Tip]",color:"yellow"},{text: "时间随机加速",color: "gray",italic:true}]

bossbar set yws:event_name name [{text: "当前事件："},{text: "时间要开始加速了"}]

data modify storage yws:event b2 set value {rate:20f}
execute store result storage yws:event 12.rate float 1 run random value 20..100
execute at @r run function yws:game/event/pool/b/2/time_rate with storage yws:event 12