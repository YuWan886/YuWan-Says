# 许三观卖血记

title @a title {text: "事件刷新"}
title @a subtitle {text: "许三观卖血记"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "累计失去60点生命值,单次失去生命值不少于6点,且不能死亡",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "许三观卖血记"}]

scoreboard objectives add Sell_Blood dummy
scoreboard players set @a Sell_Blood 0
scoreboard objectives add IsHurt custom:damage_taken