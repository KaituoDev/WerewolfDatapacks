# context: @s = player
# inputs: {origin: UUID}
# Assumption: only 6 signs per page

# based on the selected map index
# show the corresponding page
$data modify storage ww:temp updateMapSignsInput set value {origin: $(origin)}
scoreboard players operation %temp ww.var = %map ww.system
scoreboard players set %divider ww.var 6
scoreboard players operation %temp ww.var /= %divider ww.var
execute store result storage ww:temp updateMapSignsInput.batch int 1 run scoreboard players add %temp ww.var 1

function ww:config/board/page/map/_batch with storage ww:temp updateMapSignsInput