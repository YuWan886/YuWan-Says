# 禁工作台

title @a title {text: "事件刷新"}
title @a subtitle {text: "禁工作台"}

tellraw @a {text: "不要使用工作台",color: "gray",italic:true}

bossbar set yws:event_name name [{text: "当前事件："},{text: "禁工作台"}]

scoreboard players set @a UsedRraftingTable 0