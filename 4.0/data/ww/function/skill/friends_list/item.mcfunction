# context: @s = player

execute if function ww:game/mode/is_lunatic run return run function ww:chat/_dm { \
  type: 'info', \
  message: '疯人院模式下无法使用好友名单' \
}

function ww:skill/_item {id: 'friends_list'}