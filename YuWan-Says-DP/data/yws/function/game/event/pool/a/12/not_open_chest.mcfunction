# 胸部？

title @a title {text: "事件刷新"}
title @a subtitle {text: "胸部？"}

tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "不要打开箱子",color: "gray"}]

bossbar set yws:event_name name [{text: "当前事件："},{text: "胸部？"}]

scoreboard objectives add OpenChest custom:open_chest