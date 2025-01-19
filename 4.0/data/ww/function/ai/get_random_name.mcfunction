# context: server
# storage: ww:temp aiCustomNames
# output: ww:output randomAIName

data remove storage ww:output randomAIName
execute unless data storage ww:temp aiCustomNames run return fail

data modify storage ww:temp randInput set value {min: 0}
execute store result score %length ww.var run data get storage ww:temp aiCustomNames
execute store result storage ww:temp randInput.max int 1 run scoreboard players remove %length ww.var 1

data modify storage ww:temp getAINameInput set value {}
execute store result storage ww:temp getAINameInput.index int 1 run \
 function ww:utils/_rand with storage ww:temp randInput

function ww:ai/_get_random_name with storage ww:temp getAINameInput