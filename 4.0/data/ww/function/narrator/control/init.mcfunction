# context: @s = player

execute if predicate ww:is_night run tellraw @a[predicate=!ww:alive] \
 [ {"text":"[强制跳过晚上]","color":"dark_purple","bold": true,"clickEvent":{"action":"run_command","value":"/function ww:time/skip"}}]

execute unless predicate ww:is_night run tellraw @a[predicate=!ww:alive] \
 [ {"text":"[强制跳过白天]","color":"dark_purple","bold": true,"clickEvent":{"action":"run_command","value":"/function ww:time/skip"}}]

tellraw @a[predicate=!ww:alive] \
 [ {"text":"[强制结束游戏]","color":"red","bold": true,"clickEvent":{"action":"run_command","value":"/function ww:game/end"}}]
tellraw @a[predicate=!ww:alive] ""