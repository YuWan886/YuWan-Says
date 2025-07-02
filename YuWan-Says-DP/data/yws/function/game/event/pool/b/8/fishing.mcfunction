# 钓鱼佬

title @a title {text: "事件刷新"}
title @a subtitle {text: "钓鱼佬"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "钓鱼佬"}]

scoreboard objectives add FishingTimes custom:fish_caught {text: "捕鱼数"}
execute store result score #Game FishingTimes run random value 3..6

tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "捕鱼",color: "gray"},{score:{name:"#Game",objective:"FishingTimes"},color:"aqua"},{text: "次",color: "gray"}]