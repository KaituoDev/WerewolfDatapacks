# context: @s = player | villager

data modify storage ww:temp getMapObjectInput set value {}
execute store result storage ww:temp getMapObjectInput.index int 1 run scoreboard players get %map ww.system
function ww:game/map/_get_obj with storage ww:temp getMapObjectInput

function ww:game/map/_self_tp with storage ww:output mapObj