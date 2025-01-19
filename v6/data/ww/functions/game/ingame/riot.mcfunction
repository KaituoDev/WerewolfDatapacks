execute as @a[scores={curse=3..}] run function ww:player/death/curse

execute as @a[tag=alive,predicate=!ww:invis,scores={immune=1..},tag=!wraiths] at @s run function ww:particles/immune

execute if predicate ww:morning run function ww:game/ingame/riot/morning
execute if predicate ww:night run function ww:game/ingame/riot/night

# Default Riot Mode Invisibility Handling
effect give @a[scores={invisible=1..}] invisibility 1 0 true

execute if score %fall_damage system matches 1 as @a[tag=alive,scores={damageResisted=200..}] unless score @s immune matches 1.. run function ww:player/death/fall
execute if score %fall_damage system matches 1 run scoreboard players reset @a damageResisted