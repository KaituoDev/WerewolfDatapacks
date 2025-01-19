# context: @s = player
# inputs: {index}

data modify storage ww:temp teleportInput set value {}

# 1. store player's current location
data modify storage ww:temp positions set value {strings:[], delimiter:' '}
execute store result storage ww:temp teleportInput.temp int 1 run data get entity @s Pos[0]
data modify storage ww:temp positions.strings append from storage ww:temp teleportInput.temp
execute store result storage ww:temp teleportInput.temp int 1 run data get entity @s Pos[1]
data modify storage ww:temp positions.strings append from storage ww:temp teleportInput.temp
execute store result storage ww:temp teleportInput.temp int 1 run data get entity @s Pos[2]
data modify storage ww:temp positions.strings append from storage ww:temp teleportInput.temp

function ww:utils/_join_string with storage ww:temp positions
data modify storage ww:temp teleportInput.prevLocation set from storage ww:output joinString

# 2. find the map's location
$data modify storage ww:temp teleportInput.nextLocation set from storage ww:memory config.MAPS[$(index)].location

# 3. teleport
function ww:config/board/action/map/_tp_location with storage ww:temp teleportInput