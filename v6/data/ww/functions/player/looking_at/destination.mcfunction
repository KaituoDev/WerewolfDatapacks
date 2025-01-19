## CONTEXT: @s = destination player being checked, @p[tag=this] = player looking at someone
## Ran by ww:player/looking_at/modern

tag @s add correctStare

execute as @p[tag=this] if predicate ww:staring_correct as @p[tag=correctStare] run function ww:player/looking_at/switcher

tag @s remove correctStare