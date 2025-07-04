
$data modify storage yws:settings gamerule_keepinv set value $(gamerule_keepinv)
execute if data storage yws:settings {gamerule_keepinv:1} run gamerule keepInventory true
execute if data storage yws:settings {gamerule_keepinv:0} run gamerule keepInventory false

$scoreboard players set #System EventDuraTime $(event_dura_time)
$scoreboard players set #System EventIntervalTime $(event_interval_time)