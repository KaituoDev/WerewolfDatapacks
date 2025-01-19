# context: @s = player | villager
# scores: ww.foolStealGiftSource

function ww:chat/_dm { \
 type: 'lmao', \
 message: '你得到了禮物，但你犯蠢把禮物送走了', \
}

# narrator
data modify storage ww:temp narratorInput set value {}
execute store result storage ww:temp narratorInput.source int 1 run \
 scoreboard players get @s ww.foolStealGiftSource

data modify storage ww:temp narratorInput.victim set from entity @s UUID
function ww:narrator/info/_fool_stolen_gift with storage ww:temp narratorInput

# send gift to source
data modify storage ww:temp foolSendGiftInput set value {}
execute store result storage ww:temp foolSendGiftInput.sourceId int 1 run \
 scoreboard players get @s ww.foolStealGiftSource
function ww:skill/christmas_gift/receive/_from_fool with storage ww:temp foolSendGiftInput