# 禁止潜行

title @a title {text: "事件刷新"}
title @a subtitle {text: "禁止潜行"}

tellraw @a ["",{text:"[Tip]",color:"yellow"},{text: "不要潜行",italic:true,color: "gray"}]

bossbar set yws:event_name name [{text: "当前事件："},{text: "禁止潜行"}]