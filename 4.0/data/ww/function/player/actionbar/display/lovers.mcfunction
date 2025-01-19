# context: @s = player
# storage: ww:temp actionbarInput.lovers

data modify storage ww:temp actionbarLoversInput set value {}
execute store result storage ww:temp actionbarLoversInput.group int 1 run \
 scoreboard players get @s ww.pairingGroup

function ww:player/actionbar/display/_lovers with storage ww:temp actionbarLoversInput