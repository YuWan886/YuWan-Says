# 假如我是一只吸血鬼

title @a title {text: "事件刷新"}
title @a subtitle {text: "假如我是一只吸血鬼"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "不要暴露在太阳底下",color: "gray"},{text:"\n倒计时10秒",color:"gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "假如我是一只吸血鬼"}]

scoreboard players set #Timer ReadyTime 10