## CONTEXT: entity to teleport to a random swap_tp marker

tag @s add this
execute as @e[type=marker,tag=swap_tp] if score @s swapOrder = @p[tag=this] swapOrder at @s run tp @p[tag=this] @s
tag @s remove this