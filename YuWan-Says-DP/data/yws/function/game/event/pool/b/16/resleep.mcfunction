# 起来重睡
title @a title {text: "事件刷新"}
title @a subtitle {text: "起来重睡"}

tellraw @a ["",{text: "\n\n[Tip]",color:"yellow"},{text: "睡觉时被幻翼攻击",color: "gray"}]

bossbar set yws:event_name name [{text: "当前事件："},{text: "起来重睡"}]

advancement revoke @a only yws:event/b/resleep

scoreboard objectives add IsSleep custom:time_since_rest {text: "自上次入眠"}

time set night
execute at @a run summon phantom ~ ~10 ~
execute at @a run summon phantom ~ ~10 ~
execute at @a run summon phantom ~ ~10 ~