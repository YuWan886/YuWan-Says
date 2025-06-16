# 队伍数量

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"


# 红
execute if score #Team.Red TeamStatus matches 0 run tellraw @s [{text: "[红队]",color: "gray",click_event:{action: "run_command",command: "function yws:settings/team/0_1/red_1"}}]
execute if score #Team.Red TeamStatus matches 1 run tellraw @s [{text: "[红队]",color: "red",click_event:{action: "run_command",command: "function yws:settings/team/0_1/red_0"}}]
# 黄
execute if score #Team.Yellow TeamStatus matches 0 run tellraw @s [{text: "[黄队]",color: "gray",click_event:{action: "run_command",command: "function yws:settings/team/0_1/yellow_1"}}]
execute if score #Team.Yellow TeamStatus matches 1 run tellraw @s [{text: "[黄队]",color: "yellow",click_event:{action: "run_command",command: "function yws:settings/team/0_1/yellow_0"}}]
# 蓝
execute if score #Team.Blue TeamStatus matches 0 run tellraw @s [{text: "[蓝队]",color: "gray",click_event:{action: "run_command",command: "function yws:settings/team/0_1/blue_1"}}]
execute if score #Team.Blue TeamStatus matches 1 run tellraw @s [{text: "[蓝队]",color: "blue",click_event:{action: "run_command",command: "function yws:settings/team/0_1/blue_0"}}]
# 绿
execute if score #Team.Green TeamStatus matches 0 run tellraw @s [{text: "[绿队]",color: "gray",click_event:{action: "run_command",command: "function yws:settings/team/0_1/green_1"}}]
execute if score #Team.Green TeamStatus matches 1 run tellraw @s [{text: "[绿队]",color: "green",click_event:{action: "run_command",command: "function yws:settings/team/0_1/green_0"}}]

# 返回
tellraw @s {text: "[上一页]",click_event:{action: "run_command",command: "function yws:settings/team/main"}}