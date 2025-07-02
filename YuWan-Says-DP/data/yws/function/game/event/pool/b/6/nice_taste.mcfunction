# 真香

title @a title {text: "事件刷新"}
title @a subtitle {text: "真香"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "真香"}]

scoreboard objectives add UsedRottenFleshTimes used:rotten_flesh {text: "食用腐肉次数"}
execute store result score #Game UsedRottenFleshTimes run random value 4..8

tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "吃掉",color: "gray"},{score:{name:"#Game",objective:"UsedRottenFleshTimes"},color:"aqua"},{text: "个腐肉",color: "gray"}]