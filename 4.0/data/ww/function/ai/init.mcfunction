# context: server

data modify storage ww:temp getMapObjectInput set value {}
execute store result storage ww:temp getMapObjectInput.index int 1 run scoreboard players get %map ww.system
function ww:game/map/_get_obj with storage ww:temp getMapObjectInput

execute store result score %AI_COUNTER ww.system run data get storage ww:memory config.AI_COUNT
execute if score %AI_COUNTER ww.system matches 0 run return fail

execute store result bossbar ww:ai_counter max run scoreboard players get %AI_COUNTER ww.system
bossbar set ww:ai_counter value 0

bossbar set ww:ai_counter players @a
bossbar set ww:ai_counter visible true

data remove storage ww:memory aiSetupLocation
data modify storage ww:memory aiSetupLocation set from storage ww:output mapObj.location

data modify storage ww:temp aiCustomNames set from storage ww:memory AICustomNames

function ww:ai/create