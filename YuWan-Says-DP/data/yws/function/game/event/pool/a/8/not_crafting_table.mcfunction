# 禁工作台

title @a title {text: "事件刷新"}
title @a subtitle {text: "禁工作台"}

tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "不要使用工作台",color: "gray"}]

bossbar set yws:event_name name [{text: "当前事件："},{text: "禁工作台"}]

scoreboard objectives add UsedCraftingTable custom:interact_with_crafting_table