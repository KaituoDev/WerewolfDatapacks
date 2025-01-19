# context: @s = player | villager who is krampus, regardless of fool or not

execute if entity @s[type=player] run function ww:chat/_dm { \
  type: 'info', \
  message: '你偷到礼物了，好奇心驱使你直接打开', \
}
function ww:skill/christmas_gift/run