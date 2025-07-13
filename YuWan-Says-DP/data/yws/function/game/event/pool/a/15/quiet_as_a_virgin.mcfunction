# 静如处子

title @a title {text: "事件刷新"}
title @a subtitle {text: "静如处子"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "不要造成伤害",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "静如处子"}]

scoreboard objectives add DamageDealt custom:damage_dealt {text: "造成伤害"}