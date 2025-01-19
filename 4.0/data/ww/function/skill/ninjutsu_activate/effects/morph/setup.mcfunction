# context: @s = villager dummy, @n[tag=this] = morphing player

data merge entity @s {Invulnerable: 1b, DeathLootTable: "air"}
tag @s add ww.morph_entity

# store morph entity information
data modify storage ww:temp setStateInput set value {name: 'playerMorph'}
data modify storage ww:temp setStateInput.value.uuid set from entity @s UUID
execute as @n[tag=this] run function ww:player/_set_state with storage ww:temp setStateInput