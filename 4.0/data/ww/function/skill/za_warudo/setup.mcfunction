# context: @s = marker, @n[tag=this_za_warudo_spawner] = source entity

data modify entity @s Rotation set from entity @n[tag=this_za_warudo_spawner] Rotation
tag @s add ww.za_warudo_origin
data modify storage ww:temp setStateInput set value {name: 'playerZaWarudoOrigin'}
data modify storage ww:temp setStateInput.value set from entity @s UUID
execute as @n[tag=this_za_warudo_spawner] run function ww:player/_set_state with storage ww:temp setStateInput