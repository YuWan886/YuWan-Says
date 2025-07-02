# 制作一个木镐

title @a title {text: "事件刷新"}
title @a subtitle {text: "制作一个木镐"}

tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "制造一个木镐",color: "gray"}]

bossbar set yws:event_name name [{text: "当前事件："},{text: "制作一个木镐"}]

scoreboard objectives add CraftWoodenPickaxe crafted:wooden_pickaxe