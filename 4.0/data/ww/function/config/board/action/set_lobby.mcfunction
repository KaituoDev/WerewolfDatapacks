# context: @s = player

data modify storage ww:temp setLobbyInput set value {}

# parse location
data modify storage ww:temp positions set value {strings:[], delimiter:' '}
execute store result storage ww:temp setLobbyInput.temp int 1 run data get entity @s Pos[0]
data modify storage ww:temp positions.strings append from storage ww:temp setLobbyInput.temp
execute store result storage ww:temp setLobbyInput.temp int 1 run data get entity @s Pos[1]
data modify storage ww:temp positions.strings append from storage ww:temp setLobbyInput.temp
execute store result storage ww:temp setLobbyInput.temp int 1 run data get entity @s Pos[2]
data modify storage ww:temp positions.strings append from storage ww:temp setLobbyInput.temp

function ww:utils/_join_string with storage ww:temp positions
data modify storage ww:temp setLobbyInput.location set from storage ww:output joinString

# parse rotation
data modify storage ww:temp positions set value {strings:[], delimiter:' '}
execute store result storage ww:temp setLobbyInput.temp int 1 run data get entity @s Rotation[0]
data modify storage ww:temp positions.strings append from storage ww:temp setLobbyInput.temp
data modify storage ww:temp positions.strings append value 0

function ww:utils/_join_string with storage ww:temp positions
data modify storage ww:temp setLobbyInput.rotation set from storage ww:output joinString

# store values
data remove storage ww:temp setLobbyInput.temp
data modify storage ww:memory config.LOBBY set from storage ww:temp setLobbyInput

setworldspawn
forceload add ~ ~

tellraw @s [{"text":"遊戲大廳已設為 "},{"nbt":"config.LOBBY.location","storage":"ww:memory","color":"green","bold":true}]