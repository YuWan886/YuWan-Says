execute as @a[tag=!finish] at @s if score @s BoatRideCm >= #Game BoatRideCm run function yws:game/event/finish_2

execute as @a[tag=!finish] run title @s actionbar ["",{text:"已移动：",color:"gold"},{score:{name:"@s",objective:"BoatRideCm"}},"/",{score:{name:"#Game",objective:"BoatRideCm"}}]