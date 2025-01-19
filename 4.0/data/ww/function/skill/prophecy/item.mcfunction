# context: @s = player | villager

execute if function ww:player/flag/is_bewitched run return run function ww:chat/_dm {type: 'warn', message: \
  '由於蠱毒的關係, 無法正常獲取預言書' \
}
execute if predicate ww:is_night run scoreboard players enable @s ww.prophecy
function ww:book/prophecy