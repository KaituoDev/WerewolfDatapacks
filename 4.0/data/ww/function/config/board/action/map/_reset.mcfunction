# context: @s = player
# inputs: {batch, origin}
# Assumption: only 6 signs per page

$scoreboard players set %batch ww.var $(batch)

$data modify storage ww:temp resetSignsInput set value {origin: $(origin)}
execute store result storage ww:temp resetSignsInput.startingIndex int 6 run scoreboard players get %batch ww.var

function ww:config/board/action/map/_reset_signs with storage ww:temp resetSignsInput