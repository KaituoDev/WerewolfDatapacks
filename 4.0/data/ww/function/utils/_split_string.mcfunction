# inputs: str, delimiter
# output: storage ww:output splitString

data modify storage ww:output splitString set value []

execute store result score %delimiterLength ww.var run data get storage ww:temp splitStringInput.delimiter
execute if score %delimiterLength ww.var matches ..0 run return run data modify storage ww:output splitString set value []

# delimiter is longer than str
execute store result score %strLength ww.var run data get storage ww:temp splitStringInput.str
execute if score %delimiterLength ww.var > %strLength ww.var run return run data modify storage ww:output splitString set value []

# delimiter is the same as str
$data modify storage ww:temp compareStringInput set value {"str1":"$(delimiter)", "str2":"$(str)"}
execute store result score %diff ww.var run function ww:utils/_compare_string with storage ww:temp compareStringInput
$execute if score %diff ww.var matches 0 if score %delimiterLength ww.var = %strLength ww.var run return run data modify storage ww:output splitString set value ["$(str)"]

# delimiter is not the same as str, but same length
execute store result score %diff ww.var run function ww:utils/_compare_string with storage ww:temp compareStringInput
$execute if score %diff ww.var matches 1.. if score %delimiterLength ww.var = %strLength ww.var run return run data modify storage ww:output splitString set value ["$(str)"]

# inputs have been validated
$data modify storage ww:temp tokenizeInput set value {"str":"$(str)","delimiter":"$(delimiter)"}
execute store result storage ww:temp tokenizeInput.strLength int 1 run scoreboard players get %strLength ww.var
execute store result storage ww:temp tokenizeInput.delimiterLength int 1 run scoreboard players get %delimiterLength ww.var

scoreboard players set %startPointer ww.var 0
scoreboard players operation %endPointer ww.var = %delimiterLength ww.var

function ww:utils/split_string/_tokenize with storage ww:temp tokenizeInput

# append any remainder
execute store result score %strLength ww.var run data get storage ww:temp tokenizeInput.str
execute if score %strLength ww.var matches 1.. run data modify storage ww:output splitString append from storage ww:temp tokenizeInput.str