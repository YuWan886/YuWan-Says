# 洁癖

title @a title {text: "事件刷新"}
title @a subtitle {text: "洁癖"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "不要占用快捷栏",color: "gray"},{text: "\n倒计时10秒",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "洁癖"}]

scoreboard players set #Timer ReadyTime 10