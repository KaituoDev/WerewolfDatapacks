# summon armorstand, store current player's id into sirenCharming, store @e[tag=this,limit=1] id into sirenSource
# if multiple siren exists, multiple armorstands would be summoned for a charmed player
# each tick, make all armorstand face the source siren, and tp 0.05 blocks ahead, then teleport the charming player
# if the armorstand is no longer within 10 block radius of the source, kill the armor stand
# also clear all armorstands when the source or charming dies, or game ends

## CONTEXT: @e[tag=this,limit=1] = current siren, @s = victim

tag @s add this_victim
execute as @e[type=armor_stand,scores={sirenCharming=1..,sirenSource=1..}] if score @s sirenSource = @e[tag=this,limit=1] id if score @s sirenCharming = @e[tag=this_victim,limit=1] id run tag @s add this_as
execute unless entity @e[type=armor_stand,tag=this_as] run function ww:role/siren/charm/summon

execute as @e[type=armor_stand,tag=this_as,limit=1] at @s facing entity @e[tag=this,limit=1] feet positioned ^ ^ ^0.5 if block ~ ~ ~ #ww:transparent if block ~ ~1 ~ #ww:transparent positioned ^ ^ ^-0.5 run tp ^ ^ ^0.05
tp @s @e[type=armor_stand,tag=this_as,limit=1]

tag @s remove this_victim
tag @e[tag=this_as] remove this_as