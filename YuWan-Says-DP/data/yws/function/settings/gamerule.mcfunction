# 游戏规则

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

tellraw @s {text: "======§l§a游戏规则§r======"}

# 保留物品栏
execute if score #System GameRule_Keep matches 0 run tellraw @s [{text: "[1] 保留物品栏"}," ",{text: "关闭",color:"red",bold:true}]
execute if score #System GameRule_Keep matches 1 run tellraw @s [{text: "[1] 保留物品栏"}," ",{text: "开启",color:"green",bold:true}]