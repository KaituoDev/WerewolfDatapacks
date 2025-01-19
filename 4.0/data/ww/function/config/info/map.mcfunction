# context: @s = player

data modify storage ww:temp printMapInfoInput set value {}
execute store result storage ww:temp printMapInfoInput.index int 1 run scoreboard players get %map ww.system
function ww:config/info/map/print with storage ww:temp printMapInfoInput