# context: @s = zombified piglin, @n[tag=this] = villager

data merge entity @s {Silent:1b,IsBaby:0b,CanBreakDoors:0b,DeathLootTable:"",ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Invulnerable:0b,CustomNameVisible:1b,Tags:["ww.killer_ai"],CustomName:'{"bold":true,"color":"red","italic":false,"text":"狼人替身"}',ArmorItems:[{id:"minecraft:netherite_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:trim":{material:"minecraft:emerald",pattern:"minecraft:sentry"}}},{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:trim":{material:"minecraft:emerald",pattern:"minecraft:sentry"}}},{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:trim":{material:"minecraft:emerald",pattern:"minecraft:sentry"}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1196516933,-32095333,-1322446814,771642745],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWE5OWQyMjQ2YjcxNWI3NDE1Zjk3ZWNlZDQwM2ZiMjFmYzRkZjIwMDgwYTYyNjFmNjM0MmQ0ODEzZmM1YWUzMCJ9fX0="}]}}}],attributes:[{id:"minecraft:water_movement_efficiency",base:1},{id:"minecraft:follow_range",base:1000},{id:"minecraft:movement_speed",base:0.4}]}
effect give @s invisibility infinite 0 true
effect give @s resistance infinite 5 true

# set state for villager
data modify storage ww:temp setStateInput set value {name: 'playerMount'}
data modify storage ww:temp setStateInput.value set from entity @s UUID
execute as @n[tag=this] run function ww:player/_set_state with storage ww:temp setStateInput

# set state for mount
data modify storage ww:temp setStateInput set value {name: 'mountOwner'}
data modify storage ww:temp setStateInput.value set from entity @n[tag=this] UUID
function ww:player/_set_state with storage ww:temp setStateInput

# in rare cases where it is summoned while riding a chicken
execute on vehicle run tag @s add ww.killer_ai_vehicle
ride @s dismount
tp @e[tag=ww.killer_ai_vehicle] ~ -1000 ~
tag @e[tag=ww.killer_ai_vehicle] remove ww.killer_ai_vehicle