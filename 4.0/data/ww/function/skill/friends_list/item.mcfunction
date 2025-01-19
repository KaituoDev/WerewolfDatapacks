# context: @s = player

execute if function ww:game/mode/is_lunatic run return run function ww:chat/_dm { \
  type: 'info', \
  message: '瘋人院模式下無法使用好友名單' \
}

function ww:skill/_item {id: 'friends_list'}