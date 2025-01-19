# inputs: {arr} array of objects
# output: ww:output enumerate

data modify storage ww:output enumerate set value []
$data modify storage ww:temp enumerateInput set value $(arr)
execute store result score %currentIndex ww.var run data get storage ww:temp enumerateInput

execute if score %currentIndex ww.var matches 0 run return fail

function ww:utils/enumerate/loop