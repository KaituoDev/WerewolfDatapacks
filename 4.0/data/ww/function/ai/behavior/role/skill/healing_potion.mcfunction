# context: @s = villager
# location: at @s

execute unless entity @e[predicate=ww:alive,distance=1..10] run return fail

data modify storage ww:temp skillInput set value {}
data modify storage ww:temp skillInput.uuid set from entity @n[predicate=ww:alive,distance=1..] UUID
function ww:skill/healing_potion/_apply with storage ww:temp skillInput

scoreboard players set @s ww.ai.healing_potion_used 1