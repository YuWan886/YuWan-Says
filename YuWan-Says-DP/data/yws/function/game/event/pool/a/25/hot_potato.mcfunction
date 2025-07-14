# 烫手山芋

title @a title {text: "事件刷新"}
title @a subtitle {text: "烫手山芋"}

tellraw @a ["",{text: "\n✦ ",color:"gray"},{text:"T",color:"gold"},{text:"I",color:"yellow"},{text:"P",color:"white"},{text: " ✦\n",color:"gray"},{text: "快丢掉那个烤土豆！",color: "gray"},{text: "\n淘汰一人,事件结束",color: "gray"}]

bossbar set yws:event_name name ["[",{score:{name:"#Game",objective:"EventCount"},extra:["/",{score:{name:"#System",objective:"EventCount"}}]},"] ",{text: "当前事件："},{text: "烫手山芋"}]

scoreboard objectives add PotatoTime dummy
scoreboard players set #Timer PotatoTime 10

function yws:game/event/pool/a/25/give_potato
function yws:schedule/loop_1s