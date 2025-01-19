scoreboard players set %started system 1
scoreboard players set %day system 1

execute if predicate ww:mode/riot if score %fall_damage system matches 1 run gamerule fallDamage true
execute unless score %fall_damage system matches 1 run gamerule fallDamage false


effect clear @a
gamemode adventure @a[tag=alive]

## start day light cycle (%morning need to be set opposite, because ww:time/start does swap)
## both modes starts with night now
scoreboard players set %morning system 1

## first day of riot mode is morning
execute if predicate ww:mode/riot run scoreboard players set %day system 0
execute if predicate ww:mode/riot run scoreboard players set %morning system 0

function ww:time/start

execute if score %gacha_mode system matches 1 run function ww:gacha/main