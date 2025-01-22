# context: @s = player

execute if function ww:game/mode/is_lunatic run return run function ww:chat/_dm { \
  type: 'info', \
  message: '疯人院模式下无法使用好友名单' \
}

function ww:skill/_item_with_custom_model_data {id: 'friends_list', custom_model_data: 23313}