# 第一个喝牛奶的人
title @a title {text: "事件刷新"}
title @a subtitle {text: "第一个喝牛奶的人"}

tellraw @a ["",{text:"[Tip]",color:"yellow"},{text: "喝一桶牛奶",color: "gray"}]

bossbar set yws:event_name name [{text: "当前事件："},{text: "第一个喝牛奶的人"}]

advancement revoke @a only yws:event/b/drink_milk


