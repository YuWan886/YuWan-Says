# UHC？

title @a title {text: "事件刷新"}
title @a subtitle {text: "UHC？"}

tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "活下去",color: "gray"}]

bossbar set yws:event_name name [{text: "当前事件："},{text: "UHC？"}]

scoreboard objectives add IsDead deathCount {text: "死亡检测"}
gamerule naturalRegeneration false
gamerule forgiveDeadPlayers false
gamerule universalAnger true