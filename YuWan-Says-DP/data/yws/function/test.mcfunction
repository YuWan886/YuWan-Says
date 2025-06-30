

# # $tellraw @s {text:"$(input)"}
# $data modify storage yws:event guess set value "$(input)"
# execute if data storage yws:event {guess:"籽岷"} run return run say 答对了
# execute if data storage yws:event {guess:"岷叔"} run return run say 答对了

# execute unless data storage yws:event {guess:"岷叔"} run say 答错了
