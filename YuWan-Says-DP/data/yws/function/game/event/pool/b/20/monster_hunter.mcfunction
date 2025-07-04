# 怪物猎人

title @a title {text: "事件刷新"}
title @a subtitle {text: "怪物猎人"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "怪物猎人"}]

# 1 zombie
# 2 skeleton
# 3 creeper
# 4 drowned
# 5 spider
# 6 cave_spider

scoreboard objectives add Killed dummy
scoreboard objectives add Killed_Zombie killed:zombie
scoreboard objectives add Killed_Skeleton killed:skeleton
scoreboard objectives add Killed_Creeper killed:creeper
scoreboard objectives add Killed_Drowned killed:drowned
scoreboard objectives add Killed_Spider killed:spider
scoreboard objectives add Killed_CaveSpider killed:cave_spider

execute store result score #Game Killed run random value 1..6

# 僵尸
execute if score #Game Killed matches 1 store result score #Game Killed_Zombie run random value 1..10
execute if score #Game Killed matches 1 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "击杀",color: "gray"},{score:{name:"#Game",objective:"Killed_Zombie"},color: "aqua"},{text: "只僵尸",color: "gray"}]
# 骷髅
execute if score #Game Killed matches 2 store result score #Game Killed_Skeleton run random value 1..10
execute if score #Game Killed matches 2 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "击杀",color: "gray"},{score:{name:"#Game",objective:"Killed_Skeleton"},color: "aqua"},{text: "只骷髅",color: "gray"}]
# 苦力怕
execute if score #Game Killed matches 3 store result score #Game Killed_Creeper run random value 1..10
execute if score #Game Killed matches 3 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "击杀",color: "gray"},{score:{name:"#Game",objective:"Killed_Creeper"},color: "aqua"},{text: "只苦力怕",color: "gray"}]
# 溺尸
execute if score #Game Killed matches 4 store result score #Game Killed_Drowned run random value 1..10
execute if score #Game Killed matches 4 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "击杀",color: "gray"},{score:{name:"#Game",objective:"Killed_Drowned"},color: "aqua"},{text: "只溺尸",color: "gray"}]
# 蜘蛛
execute if score #Game Killed matches 5 store result score #Game Killed_Spider run random value 1..10
execute if score #Game Killed matches 5 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "击杀",color: "gray"},{score:{name:"#Game",objective:"Killed_Spider"},color: "aqua"},{text: "只蜘蛛",color: "gray"}]
# 洞穴蜘蛛
execute if score #Game Killed matches 6 store result score #Game Killed_CaveSpider run random value 1..10
execute if score #Game Killed matches 6 run tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "击杀",color: "gray"},{score:{name:"#Game",objective:"Killed_CaveSpider"},color: "aqua"},{text: "只洞穴蜘蛛",color: "gray"}]