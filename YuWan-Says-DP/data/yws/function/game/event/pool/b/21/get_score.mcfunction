advancement revoke @s only yws:event/b/shoot_bees

scoreboard players add @s ShootBeesTimes 1

tellraw @a ["",{text:"[Tip]",color:"dark_purple"},{selector:"@s"},{text:"射中一只马蜂"},"-",{text:"SB值"},{text:"+1",color:"green"}]