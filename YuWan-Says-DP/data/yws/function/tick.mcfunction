
execute if score #System GameStatus matches 1 run function yws:loop/main

function yws:block/init

# TriggerFunction
# 1 yws:game/start
# 2 yws:game/end
execute as @a[scores={TriggerFunction=1}] run function yws:trigger/function/1
execute as @a[scores={TriggerFunction=2}] run function yws:trigger/function/2
# TriggerDialog
# 1 yws:control
# 2 yws:settings/main
# 3 yws:settings/teammode
execute as @a[scores={TriggerDialog=1}] run function yws:trigger/dialog/1
execute as @a[scores={TriggerDialog=2}] run function yws:trigger/dialog/2
execute as @a[scores={TriggerDialog=3}] run function yws:trigger/dialog/3