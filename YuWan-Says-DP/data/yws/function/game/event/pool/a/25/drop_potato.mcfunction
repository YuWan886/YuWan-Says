# 丢土豆

advancement revoke @s only yws:event/a/hot_potato

tag @s remove hot_potato
kill @e[type=item,nbt={Item:{id:"minecraft:baked_potato",components:{"minecraft:custom_model_data":{strings:["hot_potato"]}}}}]

function yws:game/event/pool/a/25/give_potato