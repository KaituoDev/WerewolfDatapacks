# context: @s = player

data modify storage ww:temp filterLoversInput set value {}
execute store result storage ww:temp filterLoversInput.group int 1 run \
 scoreboard players get @s ww.pairingGroup

function ww:skill/autopilot/track/_filter_lovers with storage ww:temp filterLoversInput