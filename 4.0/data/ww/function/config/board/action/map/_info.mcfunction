# context: @s = player
# inputs {origin: UUID}
# scores: %map ww.system

data modify storage ww:temp printMapInfoInput set value {}
execute store result storage ww:temp printMapInfoInput.index int 1 run scoreboard players get %map ww.system
function ww:config/board/action/map/info/_print with storage ww:temp printMapInfoInput