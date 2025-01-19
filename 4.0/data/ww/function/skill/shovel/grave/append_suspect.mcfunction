# context: @s = player | villager
# storage: ww:temp setupGraveInput

function ww:player/name
data remove storage ww:temp suspectNameInput
data modify storage ww:temp suspectNameInput.name set from storage ww:output playerName

execute unless data storage ww:temp suspectNameInput.name run return fail

# take substring of name
execute store result score %length ww.var run data get storage ww:temp suspectNameInput.name
# do not modify if length is less than 4
execute if score %length ww.var matches 5.. run \
 data modify storage ww:temp suspectNameInput.name set string storage ww:temp suspectNameInput.name 1 -3
execute if score %length ww.var matches 5.. run \
 data modify storage ww:temp suspectNameInput.name set string storage ww:temp suspectNameInput.name 1 -2

execute if score %length ww.var matches 5.. run return run \
 function ww:skill/shovel/grave/_obfuscate_name with storage ww:temp suspectNameInput
 
data modify storage ww:temp setupGraveInput.suspectsStrings append from storage ww:temp suspectNameInput.name