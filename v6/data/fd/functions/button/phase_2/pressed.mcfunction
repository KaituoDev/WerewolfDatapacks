## running as a button aec
function fd:button/replace/unpowered

tag @s add this_aec
execute as @a[scores={id=1..}] if score @s id = @e[type=area_effect_cloud,tag=this_aec,limit=1] owner run tag @s add owner

# checking players who are looking at the button
execute as @a[distance=..6,tag=alive,tag=!has_role] at @s run function fd:button/phase_2/looking/init

# execute unless entity @a[tag=candidate] run tag @p[tag=alive,distance=..2,tag=!has_role] add candidate

# reward sfx
playsound minecraft:entity.player.levelup master @p[tag=candidate] ~ ~ ~

tag @a remove owner

# clear button if found by others
execute store success score %found_candidate var if entity @a[tag=candidate]

execute if score %found_candidate var matches 1 run setblock ~ ~ ~ air
execute if score %found_candidate var matches 1 run function ww:role/assign/buttons/player
tag @a remove candidate
execute if score %found_candidate var matches 1 run kill @s

tag @e[type=area_effect_cloud,tag=this_aec] remove this_aec