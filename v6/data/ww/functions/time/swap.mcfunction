kill @e[type=item]

scoreboard players set %swapped var 0
scoreboard players set %riotNightDeathCount system 0

schedule clear ww:session/wolf/main_1s
bossbar set wolf_vote visible false
bossbar set skip_item visible false

execute if predicate ww:morning run scoreboard players operation %time system = %NIGHT_TIME constant
execute if predicate ww:night run scoreboard players operation %time system = %MORNING_TIME constant

execute store result bossbar minecraft:time max run scoreboard players get %time system

execute if predicate ww:night run function ww:time/morning
execute if score %swapped var matches 0 if predicate ww:morning run function ww:time/night

effect give @a invisibility 2 0 true
scoreboard players set @a invisible 10

execute if score %koumi_map system matches 1 run function pm:map/4