# inputs: arr, size
# output: ww:output chunk
data modify storage ww:output chunk set value []

$scoreboard players set %size ww.var $(size)
execute if score %size ww.var matches 0 run return fail

$data modify storage ww:temp loopInput set value {currentIndex: 0, size: $(size)}
$data modify storage ww:temp loopInput.arr set value $(arr)

execute store result score %arrLength ww.var run data get storage ww:temp loopInput.arr
$execute if score %arrLength ww.var <= %size ww.var run return run data modify storage ww:output chunk set value $(arr)

execute store result storage ww:temp loopInput.arrLength int 1 run scoreboard players get %arrLength ww.var
function ww:utils/chunk/_loop with storage ww:temp loopInput