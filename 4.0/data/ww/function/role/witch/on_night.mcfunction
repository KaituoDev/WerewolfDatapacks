# context: @s = player | villager

execute if score @s ww.poisonCD matches 1.. run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"score":{"name":"@s","objective":"ww.poisonCD"},"color":"green","bold":true},{"text":" 天后才会拿到毒药","color":"white","bold":false}]' \
}
execute unless score @s ww.poisonCD matches 1.. run function ww:skill/poison_potion/item
function ww:skill/healing_potion/item