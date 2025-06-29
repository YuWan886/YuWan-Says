# 胃病

title @a title {text: "事件刷新"}
title @a subtitle {text: "胃病"}

tellraw @a ["",{text:"[Tip]",color:"yellow"},{text: "不要进食",color: "gray",italic:true}]

bossbar set yws:event_name name [{text: "当前事件："},{text: "胃病"}]

advancement revoke @a only yws:event/a/not_eating