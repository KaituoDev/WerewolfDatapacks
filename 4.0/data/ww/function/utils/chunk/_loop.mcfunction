# inputs: arr, arrLength, currentIndex, size
# output: append to -> ww:output chunk

$scoreboard players set %endIndex ww.var $(currentIndex)
$data modify storage ww:temp sliceArrayInput set value {arr: $(arr), start: $(currentIndex)}
$execute store result storage ww:temp sliceArrayInput.end int 1 run scoreboard players add %endIndex ww.var $(size)

function ww:utils/_slice_array with storage ww:temp sliceArrayInput
execute store result score %sliceArrayLength ww.var run data get storage ww:output sliceArray
execute if score %sliceArrayLength ww.var matches 1.. run data modify storage ww:output chunk append from storage ww:output sliceArray

$data modify storage ww:temp loopInput set value {arr: $(arr), arrLength: $(arrLength), size: $(size)}
execute store result storage ww:temp loopInput.currentIndex int 1 run scoreboard players add %endIndex ww.var 1

# the %endIndex here will be the %currentIndex in next iteration
$execute if score %endIndex ww.var matches ..$(arrLength) run function ww:utils/chunk/_loop with storage ww:temp loopInput