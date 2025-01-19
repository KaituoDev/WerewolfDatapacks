# context: @s = villager
# location: at @s

execute unless entity @e[predicate=ww:alive,distance=1..10] run return fail

data modify storage ww:temp skillInput set value {}
data modify storage ww:temp skillInput.uuid set from entity @n[predicate=ww:alive,distance=1..] UUID

execute unless score @s ww.poisonCD matches 1.. run \
 function ww:skill/poison_potion/_apply with storage ww:temp skillInput

scoreboard players set @s ww.ai.poison_potion_used 1