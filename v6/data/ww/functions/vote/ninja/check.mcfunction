## CONTEXT: a ninja player

tag @s add this
execute as @a[scores={id=1..}] if score @s id = @p[tag=this] scapegoatTarget run tag @s add currentTarget
tag @s remove this

# fool case: if selected someone, it will always be ninjaWrong
execute if entity @s[tag=ninja,tag=fool] if entity @a[tag=currentTarget] run tag @s add ninjaWrong
execute if entity @s[tag=ninja,tag=fool] run tag @a remove currentTarget

# ninja chose a bads, immediate death
execute if entity @s[tag=ninja] if entity @a[tag=currentTarget,tag=bads,tag=alive] run tag @s add ninjaWrong

execute if entity @a[tag=currentTarget,tag=!bads,tag=alive] if entity @s[tag=dying] run tag @p[tag=currentTarget] add dying
execute if entity @a[tag=currentTarget,tag=!bads,tag=alive] if entity @s[tag=dying] run tag @p[tag=currentTarget] add ninjaTarget

execute if entity @a[tag=currentTarget,tag=!bads,tag=alive] run tag @s remove dying

tag @s[tag=ninjaWrong] add dying
tag @a remove currentTarget