# 队伍设置

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

tellraw @s {text: "======§l§a队伍设置§r======"}

execute if score #System TeamMode matches 0 run tellraw @s [\
            {text: "[1] 单人模式"}," ",{text: "[ON]",color: "green",bold:true,click_event:{action: "run_command",command: "function yws:settings/0_1/teammode_1"}},"\n",\
            {text: "[2] 团队模式"},"  ",{text: "[OFF]",color: "red",bold:true,click_event:{action: "run_command",command: "function yws:settings/0_1/teammode_1"}}]
execute if score #System TeamMode matches 1 run tellraw @s [\
            {text: "[1] 单人模式"}," ",{text: "[OFF]",color: "red",bold:true,click_event:{action: "run_command",command: "function yws:settings/0_1/teammode_0"}},"\n",\
            {text: "[2] 团队模式"},"  ",{text: "[ON]",color: "green",bold:true,click_event:{action: "run_command",command: "function yws:settings/0_1/teammode_0"}},"\n",\
              {text: "  [2.1] 队伍数量",click_event:{action: "run_command",command: "function yws:settings/team/count"}}," ",{score:{name: "#System",objective:"TeamCount"}}]