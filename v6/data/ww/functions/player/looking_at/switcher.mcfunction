## CONTEXT: @e[type=#ww:targets,tag=this,limit=1] = source player, @s = target player, @e[type=#ww:targets,tag=correctStare,limit=1] = target player

execute as @e[type=#ww:targets,tag=this,limit=1] if predicate ww:mainhand/rifle run function ww:role/hunter/rifle/hit
execute as @e[type=#ww:targets,tag=this,limit=1] unless predicate ww:mainhand/rifle if predicate ww:offhand/rifle run function ww:skill/hunter/rifle/hit

execute as @e[type=#ww:targets,tag=this,limit=1] if predicate ww:mainhand/vote/potion_death run function ww:role/witch/potion/death
execute as @e[type=#ww:targets,tag=this,limit=1] unless predicate ww:mainhand/vote/potion_death if predicate ww:offhand/vote/potion_death run function ww:role/witch/potion/death

execute as @e[type=#ww:targets,tag=this,limit=1] if predicate ww:mainhand/vote/potion_heal run function ww:role/witch/potion/heal
execute as @e[type=#ww:targets,tag=this,limit=1] unless predicate ww:mainhand/vote/potion_heal if predicate ww:offhand/vote/potion_heal run function ww:role/witch/potion/heal

execute as @e[type=#ww:targets,tag=this,limit=1] if predicate ww:mainhand/instant_death as @e[type=#ww:targets,tag=correctStare,limit=1] run function ww:player/death/instant
execute as @e[type=#ww:targets,tag=this,limit=1] unless predicate ww:mainhand/instant_death if predicate ww:offhand/instant_death as @e[type=#ww:targets,tag=correctStare,limit=1] run function ww:player/death/instant

execute as @e[type=#ww:targets,tag=this,limit=1] if predicate ww:mainhand/capture run function ww:role/wolf/hijack/capture
execute as @e[type=#ww:targets,tag=this,limit=1] unless predicate ww:mainhand/capture if predicate ww:offhand/capture run function ww:role/wolf/hijack/capture

execute as @e[type=#ww:targets,tag=this,limit=1] if predicate ww:mainhand/duel run function ww:role/knight/check
execute as @e[type=#ww:targets,tag=this,limit=1] unless predicate ww:mainhand/duel if predicate ww:offhand/duel run function ww:role/knight/check