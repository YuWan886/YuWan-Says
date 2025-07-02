# 我不认识
dialog clear @s

# execute if data storage yws:event guessup.[0] if data storage yws:event {guessup_answer:"籽岷"} run return run function yws:game/event/finish_2
# execute if data storage yws:event guessup.[0] unless data storage yws:event {guessup_answer:"籽岷"} run tellraw @s ["",{text: "打错了"}]

