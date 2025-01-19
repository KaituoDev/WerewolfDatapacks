# context: server

execute unless predicate ftb:is_enabled run return fail

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"ftb.button":true}}}}]

execute if predicate ftb:can_place_button run function ftb:game/place/main
execute if predicate ftb:can_find_button run function ftb:game/find/main

effect give @a[predicate=ww:player] invisibility infinite 0 true
execute at @a[predicate=ww:player] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force