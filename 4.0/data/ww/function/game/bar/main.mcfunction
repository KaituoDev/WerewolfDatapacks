# context: server
# storage: ww:memory GameBarTexts

function ww:game/bar/time/main

bossbar set ww:game_status name [ \
  {"nbt":"GameBarTexts.time","storage":"ww:memory","interpret":true}, \
  {"nbt":"GameBarTexts.top_vote_label", "storage":"ww:memory","color":"white","bold":false}, \
  {"nbt":"GameBarTexts.carousel","storage":"ww:memory","color":"green"} \
]

execute unless predicate ww:is_night run bossbar set ww:game_status color yellow
execute if predicate ww:is_night run bossbar set ww:game_status color purple
execute if predicate ww:is_night if score %isBloodMoon ww.system matches 1 run bossbar set ww:game_status color red