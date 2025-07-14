execute as @a[tag=!finish] at @s if score @s MinecartRideCm >= #Game MinecartRideCm run function yws:game/event/finish_2

execute as @a[tag=!finish] run title @s actionbar ["",{text:"已移动：",color:"gold"},{score:{name:"@s",objective:"MinecartRideCm"}},"/",{score:{name:"#Game",objective:"MinecartRideCm"}}]