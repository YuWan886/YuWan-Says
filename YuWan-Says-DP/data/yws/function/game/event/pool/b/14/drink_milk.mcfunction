# 第一个喝牛奶的人
title @a title {text: "事件刷新"}
title @a subtitle {text: "第一个喝牛奶的人"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "喝一桶牛奶",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "第一个喝牛奶的人"}]

scoreboard objectives add UsedMilkBucket used:milk_bucket {text: "喝牛奶"}