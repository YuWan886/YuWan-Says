execute store result score #Game PlayerCount run list

execute if score #Game PlayerCount matches 1..6 run function yws:game/event/pool/b/3/1-3
execute if score #Game PlayerCount matches 8.. run function yws:game/event/pool/b/3/1-5