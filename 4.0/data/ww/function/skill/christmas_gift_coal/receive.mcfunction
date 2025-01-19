# context: @s = player | villager

# gift from fool krampus
execute if score @s ww.foolStealGiftSource matches 1.. run return run function ww:skill/christmas_gift_coal/receive/from_fool

# handler for krampus, if krampus steals, auto use item
execute if entity @s[tag=krampus] run return run function ww:skill/christmas_gift_coal/receive/open_gift

# gift stolen
execute if score @s ww.stealGiftSource matches 1.. run return run function ww:skill/christmas_gift_coal/receive/stolen

# handler for AI, if no krampus steals, auto use item
execute if entity @s[type=villager] run return run function ww:skill/christmas_gift_coal/run

# handler for normal player
function ww:skill/christmas_gift_coal/item

function ww:chat/_dm { \
  type: 'info', \
  message: '你收到了一份圣诞礼物，右键即可打开' \
}