# 我们需要再深入些

title @a title {text: "事件刷新"}
title @a subtitle {text: "我们需要再深入些"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "挖爆一个木镐",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "我们需要再深入些"}]

advancement revoke @a only story/enter_the_nether