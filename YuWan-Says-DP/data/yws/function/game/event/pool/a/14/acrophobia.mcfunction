# 恐高

title @a title {text: "事件刷新"}
title @a subtitle {text: "恐高"}

tellraw @a ["",{text:"[Tip]",color:"yellow"},{text: "下落高度不要超过3格",color: "gray"}]

bossbar set yws:event_name name [{text: "当前事件："},{text: "恐高"}]

scoreboard objectives add FallDistance dummy {text:"下落高度"}
scoreboard players set @a FallDistance 0