# context: @s = player | villager

function ww:skill/steal/on_morning
execute if score @s ww.poisonCD matches 1.. run \
 scoreboard players remove @s ww.poisonCD 1
execute if predicate ww:alive if function ww:player/flag/is_dying_today run function ww:player/dying_today