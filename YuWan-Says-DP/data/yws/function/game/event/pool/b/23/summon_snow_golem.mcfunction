# 我想看看春天

title @a title {text: "事件刷新"}
title @a subtitle {text: "我想看看春天"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "制造一个雪人",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "我想看看春天"}]

advancement revoke @a only yws:event/b/summon_snow_golem