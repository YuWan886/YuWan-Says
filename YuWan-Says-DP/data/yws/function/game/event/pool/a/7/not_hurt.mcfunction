# 玻璃体质

title @a title {text: "事件刷新"}
title @a subtitle {text: "玻璃体质"}

tellraw @a {text: "不要受伤",color: "gray",italic:true}

bossbar set yws:event_name name [{text: "当前事件："},{text: "玻璃体质"}]

scoreboard objectives add IsHurt custom:damage_taken
scoreboard players set @a IsHurt 0