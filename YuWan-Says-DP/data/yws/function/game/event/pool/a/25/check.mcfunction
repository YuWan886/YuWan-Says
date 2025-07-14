title @a[tag=hot_potato] actionbar ["",{text:"还有",color:"gold"},{score:{name:"#Timer",objective:"PotatoTime"},color:"red"},{text:"秒,就要爆炸了",color:"gold"}]

execute if score #Timer PotatoTime matches 0 run function yws:game/event/pool/a/25/boom