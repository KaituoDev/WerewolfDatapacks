# inputs: arr, start (inclusive), end (exclusive)
# output: ww:output sliceArray

data modify storage ww:output sliceArray set value []
$scoreboard players set %endIndex ww.var $(end)

$data modify storage ww:temp arr set value $(arr)
$scoreboard players set %endIndex ww.var $(end)
$data modify storage ww:temp loopInput set value {"currentIndex": $(start)}
# end should be exclusive, not inclusive, thus minus 1
execute store result storage ww:temp loopInput.endIndex int 1 run scoreboard players remove %endIndex ww.var 1

function ww:utils/slice_array/_loop with storage ww:temp loopInput