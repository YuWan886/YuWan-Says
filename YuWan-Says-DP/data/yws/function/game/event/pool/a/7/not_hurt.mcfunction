# 玻璃体质

title @a title {text: "事件刷新"}
title @a subtitle {text: "玻璃体质"}

tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "不要受伤",color: "gray"}]

bossbar set yws:event_name name [{text: "当前事件："},{text: "玻璃体质"}]

scoreboard objectives add IsHurt custom:damage_taken