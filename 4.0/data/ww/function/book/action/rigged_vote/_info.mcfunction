# context: @s = player | villager
# inputs: {player, uuid}

$function ww:chat/_dm {type:'rich_info', message: '[ \
  {"text":"你選擇了 ","color":"white","bold":false}, \
  {"text":"$(player)","color":"green","bold":true} \
]'}