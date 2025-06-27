

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

tellraw @s [\
            {text: "======§l§c设置§r======"},"\n",\
            {text: "[1] 队伍设置",click_event:{action: "run_command",command: "function yws:settings/team/main"}},"\n",\
            {text: "[2] 获胜条件",click_event:{action: "run_command",command: "function yws:settings/win_points"}},"\n",\
            {text: "[3] 时间设置",click_event:{action: "run_command",command: "function yws:settings/time"}},"\n",\
            {text: "[4] 游戏规则",click_event:{action: "run_command",command: "function yws:settings/gamerule"}},"\n",\
            {text: "§l§a开始游戏§r",click_event:{action: "run_command",command: "function yws:game/start"},bold:true},"\n",\
            {text: "§l§c结束游戏§r",click_event:{action: "run_command",command: "function yws:game/end"},bold:true}]