# context: @s = player | villager
# scores: ww.stealGiftSource

data modify storage ww:temp stolenInput set value {}
execute store result storage ww:temp stolenInput.sourceId int 1 run \
 scoreboard players get @s ww.stealGiftSource
function ww:skill/christmas_gift_coal/receive/_stolen with storage ww:temp stolenInput