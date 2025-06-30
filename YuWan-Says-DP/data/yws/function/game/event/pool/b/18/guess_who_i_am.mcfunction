# 猜猜我是谁？

title @a title {text: "事件刷新"}
title @a subtitle {text: "猜猜我是谁？"}

bossbar set yws:event_name name [{text: "当前事件："},{text: "猜猜我是谁？"}]

execute as @a run function yws:game/event/pool/b/18/dialog/init with entity @s

execute as @a run function yws:game/event/pool/b/18/dialog/select_up_1 with entity @s

# function yws:game/event/pool/b/18/guess_who_i_am