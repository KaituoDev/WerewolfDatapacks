# context: @s = player | villager
# score: @s ww.send_gift

data modify storage ww:temp getUUIDInput set value {}
execute store result storage ww:temp getUUIDInput.score int 1 run scoreboard players get @s ww.send_gift

scoreboard players reset @s ww.send_gift

data modify storage ww:temp sendGiftInput set value {}

# 1. get the corresponding player's uuid info by ww.globalId
execute store result score %success ww.var run function ww:player/id/_get_uuid with storage ww:temp getUUIDInput
execute if score %success ww.var matches 0 run return fail

data modify storage ww:temp sendGiftInput.uuid set from storage ww:output playerUUID

function ww:player/name/_get with storage ww:temp sendGiftInput
data modify storage ww:temp sendGiftInput.player set from storage ww:output playerName

# clear book
clear @s written_book[custom_data~{"ww.book":"ww.skill.send_gift"}]

# send gift
function ww:book/action/send_gift/_run with storage ww:temp sendGiftInput

return 1