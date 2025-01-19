clear @a
scoreboard players set @a invisible 12

kill @e[type=item]

bossbar set minecraft:time visible false

# make sure time doesn't run out in the background
scoreboard players set %time system 15

bossbar set minecraft:force_morning visible true
bossbar set minecraft:force_morning players @a

execute store result bossbar minecraft:force_morning max run scoreboard players operation %force_morning var = %FORCE_MORNING constant
execute store result bossbar minecraft:force_morning value run scoreboard players get %force_morning var

function ww:session/force_morning/main_1s