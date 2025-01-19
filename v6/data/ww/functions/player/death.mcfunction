# if is sadist, and has found the masochist, and maso is alive
# masochist will die for sadist

function ww:reset/tags/context

scoreboard players set %do_kill var 1
execute if entity @s[tag=sadist] run scoreboard players set %do_kill var 0

# this has to come first, to avoid chaining issues
# ww:player/dead could lead to a chain of variable changes
execute if score %do_kill var matches 1 run scoreboard players set @s dead 1


execute if entity @s[tag=sadist] run function ww:role/sadist/dying