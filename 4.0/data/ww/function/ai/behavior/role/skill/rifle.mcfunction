# context: @s = villager
# location: at @s

execute unless entity @e[predicate=ww:alive,distance=1..10] run return fail

data modify storage ww:temp recordInput set value {}
data modify storage ww:temp recordInput.source set from entity @s UUID
data modify storage ww:temp recordInput.victim set from entity @n[predicate=ww:alive,distance=1..] UUID
execute if entity @s[tag=ww.fool] run \ 
 data modify storage ww:temp recordInput.victim set from entity @s UUID

function ww:skill/rifle/_record with storage ww:temp recordInput

scoreboard players set @s ww.ai.rifle_used 1