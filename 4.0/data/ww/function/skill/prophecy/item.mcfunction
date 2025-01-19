# context: @s = player | villager

execute if function ww:player/flag/is_bewitched run return run function ww:chat/_dm {type: 'warn', message: \
  '由于蛊毒的关系, 无法正常获取预言书' \
}
execute if predicate ww:is_night run scoreboard players enable @s ww.prophecy
function ww:book/prophecy