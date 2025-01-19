# context: @s = player
# inputs: {index}

$execute if predicate ww:is_our_map run return run tellraw @s [ \
  {"text":"\n********************\n\n", "color":"blue","bold":true}, \
  {"storage":"ww:memory","nbt":"config.MAPS[$(index)].name","color":"aqua","bold":true}, \
  {"text":"\n\n座標: ","color":"white","bold":false}, \
  {"storage":"ww:memory","nbt":"config.MAPS[$(index)].location","color":"green","bold":true, \
    "hoverEvent":{"action":"show_text","value":["傳送至該座標"]}, \
    "clickEvent":{"action":"run_command","value":"/function ww:config/board/action/map/_teleport {index: $(index)}"} \
  }, \
  {"text":"\n\n********************", "color":"blue","bold":true} \
]

$tellraw @s [ \
  {"text":"\n********************\n\n", "color":"blue","bold":true}, \
  {"storage":"ww:memory","nbt":"config.MAPS[$(index)].name","color":"aqua","bold":true}, \
  {"text":" ✎ ","color":"gold", \
    "hoverEvent":{"action":"show_text","value":["編輯地圖名"]}, \
    "clickEvent":{"action":"run_command","value":"/function ww:config/item/_edit_map_name {index: $(index)}"} \
  }, \
  {"text":"\n\n座標: ","color":"white","bold":false}, \
  {"storage":"ww:memory","nbt":"config.MAPS[$(index)].location","color":"green","bold":true, \
    "hoverEvent":{"action":"show_text","value":["傳送至該座標"]}, \
    "clickEvent":{"action":"run_command","value":"/function ww:config/board/action/map/_teleport {index: $(index)}"} \
  }, \
  {"text":" ✎ ","color":"gold", \
    "hoverEvent":{"action":"show_text","value":["改變座標"]}, \
    "clickEvent":{"action":"run_command","value":"/function ww:config/item/_edit_map_location {index: $(index)}"} \
  }, \
  {"text":"\n\n********************", "color":"blue","bold":true} \
]