# 石器时代

title @a title {text: "事件刷新"}
title @a subtitle {text: "石器时代"}

tellraw @a {text: "不要使用铁/金/钻石工具",color: "gray",italic:true}

bossbar set yws:event_name name [{text: "当前事件："},{text: "石器时代"}]

scoreboard objectives add UsedIronSword used:iron_sword
scoreboard objectives add UsedIronAxe used:iron_axe
scoreboard objectives add UsedIronPickaxe used:iron_pickaxe
scoreboard objectives add UsedIronHoe used:iron_hoe
scoreboard objectives add UsedIronShovel used:iron_shovel
scoreboard objectives add UsedGoldenSword used:golden_sword
scoreboard objectives add UsedGoldenAxe used:golden_axe
scoreboard objectives add UsedGoldenPickaxe used:golden_pickaxe
scoreboard objectives add UsedGoldenHoe used:golden_hoe
scoreboard objectives add UsedGoldenShovel used:golden_shovel
scoreboard objectives add UsedDiamondSword used:diamond_sword
scoreboard objectives add UsedDiamondAxe used:diamond_axe
scoreboard objectives add UsedDiamondPickaxe used:diamond_pickaxe
scoreboard objectives add UsedDiamondHoe used:diamond_hoe
scoreboard objectives add UsedDiamondShovel used:diamond_shovel

scoreboard players set @a UsedIronSword 0
scoreboard players set @a UsedIronAxe 0
scoreboard players set @a UsedIronPickaxe 0
scoreboard players set @a UsedIronHoe 0
scoreboard players set @a UsedIronShovel 0
scoreboard players set @a UsedGoldenSword 0
scoreboard players set @a UsedGoldenAxe 0
scoreboard players set @a UsedGoldenPickaxe 0
scoreboard players set @a UsedGoldenHoe 0
scoreboard players set @a UsedGoldenShovel 0
scoreboard players set @a UsedDiamondSword 0
scoreboard players set @a UsedDiamondAxe 0
scoreboard players set @a UsedDiamondPickaxe 0
scoreboard players set @a UsedDiamondHoe 0
scoreboard players set @a UsedDiamondShovel 0