# context: server

# 1. loop through config.MAPS, and keep modified:1b in an array
data modify storage ww:temp mapsClone set from storage ww:memory config.MAPS
data modify storage ww:temp candidates set value []
function ww:game/map/select/loop

execute unless data storage ww:temp candidates[0] run return fail

# check if the current selected map is modified, if not, set from candidates[0].count - 1
data modify storage ww:temp getMapObjectInput set value {}
execute store result storage ww:temp getMapObjectInput.index int 1 run scoreboard players get %map ww.system
function ww:game/map/_get_obj with storage ww:temp getMapObjectInput

# if current selected map has not been modified, set from candidates[0]
execute store result score %modified ww.var run data get storage ww:output mapObj.modified
execute if score %modified ww.var matches 0 store result score %map ww.system run data get storage ww:temp candidates[0].count
execute if score %modified ww.var matches 0 run scoreboard players remove %map ww.system 1

# break out if random map is not enabled
execute store result score %randomMapEnabled ww.var run data get storage ww:memory config.RANDOM_MAP
execute if score %randomMapEnabled ww.var matches 0 run return 1

# 2. select a random item in the array
data modify storage ww:temp randInput set value {min: 0}
execute store result score %length ww.var run data get storage ww:temp candidates
execute store result storage ww:temp randInput.max int 1 run scoreboard players remove %length ww.var 1

data modify storage ww:temp selectRandomMapInput set value {}
execute store result storage ww:temp selectRandomMapInput.index int 1 run function ww:utils/_rand with storage ww:temp randInput

# 3. get the item.index and store it to %map ww.system
function ww:game/map/select/_random with storage ww:temp selectRandomMapInput

return 1