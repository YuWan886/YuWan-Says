# 开始游戏

scoreboard players set #System GameStatus 1

gamemode survival @a
clear @a
effect clear @a
effect give @a instant_health 3 255 true
effect give @a saturation 3 255 true
loot give @a loot yws:begin_kit
# 出生点
spreadplayers 0 0 80 450 true @a
spawnpoint @s ~ ~ ~
# 屏障
# worldborder center 0 0
# worldborder set 1000

time set day
weather clear
# 标题
title @a times 0t 3s 0t
title @a title {text: "游戏开始！"}
execute at @a run playsound minecraft:entity.player.levelup record @s ~ ~ ~

scoreboard players operation #Timer EventIntervalTime = #System EventIntervalTime
scoreboard players operation #Timer EventDuraTime = #System EventDuraTime
scoreboard players set #Timer ReadyTime 0
scoreboard objectives setdisplay sidebar Points

# Bossbar名称
bossbar add yws:interval_time [{text: "下一事件倒计时："}]
execute store result bossbar yws:interval_time max run scoreboard players get #System EventIntervalTime
bossbar add yws:event_name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："}]
execute store result bossbar yws:event_name max run scoreboard players get #System EventDuraTime
bossbar set yws:interval_time players @a