execute unless predicate ww:offhand run scoreboard players set %mainhand var 1
execute if predicate ww:offhand run scoreboard players set %mainhand var 0

execute if score %mainhand var matches 1 run function ww:skill/mainhand
execute if score %mainhand var matches 0 run function ww:skill/offhand