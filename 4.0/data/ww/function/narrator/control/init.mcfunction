# context: @s = player

execute if predicate ww:is_night run tellraw @a[predicate=!ww:alive] \
 [ {"text":"[強制跳過晚上]","color":"dark_purple","bold": true,"clickEvent":{"action":"run_command","value":"/function ww:time/skip"}}]

execute unless predicate ww:is_night run tellraw @a[predicate=!ww:alive] \
 [ {"text":"[強制跳過白天]","color":"dark_purple","bold": true,"clickEvent":{"action":"run_command","value":"/function ww:time/skip"}}]

tellraw @a[predicate=!ww:alive] \
 [ {"text":"[強制結束遊戲]","color":"red","bold": true,"clickEvent":{"action":"run_command","value":"/function ww:game/end"}}]
tellraw @a[predicate=!ww:alive] ""