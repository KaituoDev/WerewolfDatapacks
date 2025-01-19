# context: @s = player

data modify storage ww:temp clearStealGiftSourceInput set value {}
execute store result storage ww:temp clearStealGiftSourceInput.sourceId int 1 run \
 scoreboard players get @s ww.globalId

function ww:skill/steal_gift/_reset with storage ww:temp clearStealGiftSourceInput