# inputs: strings, delimiter
# output: storage ww:output joinString

data remove storage ww:output joinString
data remove storage ww:temp joinStringInput
$data modify storage ww:temp joinStringInput set value {strings: $(strings), delimiter: '$(delimiter)'}

execute store result score %arrLength ww.var run data get storage ww:temp joinStringInput.strings
execute if score %arrLength ww.var matches 0 run return fail

data modify storage ww:output joinString set from storage ww:temp joinStringInput.strings[0]
data remove storage ww:temp joinStringInput.strings[0]
data modify storage ww:temp joinStringInput.strToAppend set from storage ww:temp joinStringInput.strings[0]
data modify storage ww:temp joinStringInput.output set from storage ww:output joinString
execute if score %arrLength ww.var matches 2.. run function ww:utils/join_string/_join with storage ww:temp joinStringInput