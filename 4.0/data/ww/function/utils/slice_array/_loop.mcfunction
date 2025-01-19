# inputs: currentIndex, endIndex
# storage: ww:temp arr
# output: append to -> ww:output sliceArray

$data modify storage ww:output sliceArray append from storage ww:temp arr[$(currentIndex)]
$scoreboard players set %currentIndex ww.var $(currentIndex)
$data modify storage ww:temp loopInput set value {"endIndex":$(endIndex)}
execute store result storage ww:temp loopInput.currentIndex int 1 run scoreboard players add %currentIndex ww.var 1
$execute if score %currentIndex ww.var matches ..$(endIndex) run function ww:utils/slice_array/_loop with storage ww:temp loopInput