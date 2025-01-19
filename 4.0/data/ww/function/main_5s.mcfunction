# context: server

# execute if predicate ww:started run function ww:ai/behavior/spread_npc/init

schedule function ww:main_5s 3s

execute unless predicate ww:started run return fail
# ai role behaviors
function ww:ai/role_main