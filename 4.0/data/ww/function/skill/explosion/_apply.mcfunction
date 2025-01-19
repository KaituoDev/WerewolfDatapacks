# context: @s = player | villager
# inputs: {campaign}

$execute unless entity @e[predicate=ww:alive,tag=!$(campaign),distance=..10] run return fail

$execute as @n[predicate=ww:alive,tag=!$(campaign),distance=..10] run function ww:player/death/explosion

function ww:player/increment_kill
