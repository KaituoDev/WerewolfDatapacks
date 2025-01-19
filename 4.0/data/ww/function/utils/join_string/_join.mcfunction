# inputs: strings, delimiter, output, strToAppend
# storage: ww:temp joinStringInput
# output: storage ww:output joinString

$data modify storage ww:output joinString set value '$(output)$(delimiter)$(strToAppend)'

data remove storage ww:temp joinStringInput.strings[0]
data modify storage ww:temp joinStringInput.strToAppend set from storage ww:temp joinStringInput.strings[0]
data modify storage ww:temp joinStringInput.output set from storage ww:output joinString
execute store result score %arrLength ww.var run data get storage ww:temp joinStringInput.strings
execute if score %arrLength ww.var matches 1.. run function ww:utils/join_string/_join with storage ww:temp joinStringInput