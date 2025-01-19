# context: @s = player

data modify storage ww:temp updateMapInput set value {}
data modify storage ww:temp updateMapInput.index set from entity @s SelectedItem.components."minecraft:custom_data"."ww.map_index"

clear @s warped_fungus_on_a_stick[minecraft:custom_data~{ww.edit_map_location:true}]

# parse location
data modify storage ww:temp positions set value {strings:[], delimiter:' '}
execute store result storage ww:temp updateMapInput.temp int 1 run data get entity @s Pos[0]
data modify storage ww:temp positions.strings append from storage ww:temp updateMapInput.temp
execute store result storage ww:temp updateMapInput.temp int 1 run data get entity @s Pos[1]
data modify storage ww:temp positions.strings append from storage ww:temp updateMapInput.temp
execute store result storage ww:temp updateMapInput.temp int 1 run data get entity @s Pos[2]
data modify storage ww:temp positions.strings append from storage ww:temp updateMapInput.temp

function ww:utils/_join_string with storage ww:temp positions
data modify storage ww:temp updateMapInput.location set from storage ww:output joinString

# parse rotation
data modify storage ww:temp positions set value {strings:[], delimiter:' '}
execute store result storage ww:temp updateMapInput.temp int 1 run data get entity @s Rotation[0]
data modify storage ww:temp positions.strings append from storage ww:temp updateMapInput.temp
data modify storage ww:temp positions.strings append value 0

function ww:utils/_join_string with storage ww:temp positions
data modify storage ww:temp updateMapInput.rotation set from storage ww:output joinString

# update
function ww:config/board/action/map/edit/_location with storage ww:temp updateMapInput