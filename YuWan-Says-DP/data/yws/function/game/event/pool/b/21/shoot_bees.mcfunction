# Shoot Bees

title @a title {text: "事件刷新"}
title @a subtitle {text: "Shoot Bees"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "尽可能多地射蜜蜂",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "Shoot Bees"}]

scoreboard objectives add ShootBeesTimes dummy
scoreboard objectives add bee.scale dummy
scoreboard players set @a ShootBeesTimes 0
scoreboard players add #Timer EventDuraTime 1

execute as @a at @s run function yws:game/event/pool/b/21/summon

# function yws:game/event/pool/b/21/shoot_bees