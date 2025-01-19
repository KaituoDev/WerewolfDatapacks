# context: server

scoreboard players set %canFindButton ftb.system 1

bossbar set ftb:game_status players @a
bossbar set ftb:game_status visible true
execute store result score %time ftb.system run data get storage ww:memory config.MAX_FTB_FIND_TICKS
execute store result bossbar ftb:game_status max run scoreboard players get %time ftb.system
execute store result bossbar ftb:game_status value run scoreboard players get %time ftb.system

scoreboard players set %buttonsLeft ftb.system 0

# reset states
execute as @e[tag=ftb.interaction] run data remove entity @s interaction

# assign roles to markers based on pools configurations
data modify storage ftb:temp roles set value []
data modify storage ftb:temp poolKeys set from storage ww:memory poolKeys
function ftb:game/find/generate/pools

# autofill villagers if total length of roles < total players
function ftb:game/find/generate/pools/autofill

function ftb:game/find/generate/loop

function ww:game/teleport_all

execute store result score %buttonsLeft ftb.system if entity @e[tag=ftb.interaction]

execute as @a run attribute @s entity_interaction_range base set 5

title @a title {"text":"找按钮时间!!","color":"yellow"}
title @a subtitle {"text":"按钮都有对应的职业","color":"red"}