# context: @s = wolf, @n[tag=this] = player

data merge entity @s {Silent:1b,Invulnerable:0b,variant:"pale",CollarColor:2b,Tags:["ww.mount"],attributes:[{id:"minecraft:water_movement_efficiency",base:1},{id:"minecraft:follow_range",base:1000},{id:"minecraft:movement_speed",base:0.4}]}
effect give @s resistance infinite 5 true

# clone active glowing effect
data modify entity @s active_effects append from entity @n[tag=this] active_effects[{id:"minecraft:glowing"}]

# set state for player
data modify storage ww:temp setStateInput set value {name: 'playerMount'}
data modify storage ww:temp setStateInput.value set from entity @s UUID
execute as @n[tag=this] run function ww:player/_set_state with storage ww:temp setStateInput

# set state for mount
data modify storage ww:temp setStateInput set value {name: 'mountOwner'}
data modify storage ww:temp setStateInput.value set from entity @n[tag=this] UUID
function ww:player/_set_state with storage ww:temp setStateInput

ride @n[tag=this] mount @s

# sanitize tags, this removes the "this" contextual tag
execute as @n[tag=this] run function ww:player/tag/sanitize