# button press check
execute as @e[type=area_effect_cloud,tag=button] at @s if block ~ ~ ~ #minecraft:buttons[powered=true] run function fd:button/phase_2/pressed

execute as @e[type=area_effect_cloud,tag=button,tag=!has_role] at @s run function fd:button/kill

## show ending message
execute as @a at @s run function fd:button/track
execute at @e[type=minecraft:area_effect_cloud,tag=button] run particle minecraft:end_rod ~ ~ ~ 1 1 1 0 1 force @a
execute at @a[tag=alive] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute as @a[tag=alive] at @s facing entity @e[type=area_effect_cloud,tag=button,limit=1,sort=nearest] eyes positioned ~ ~1.5 ~ positioned ^ ^ ^2 run particle happy_villager ~ ~ ~ 0 0 0 0 1 force @s

execute unless entity @e[type=area_effect_cloud,tag=button] run function fd:button/phase_2/skip