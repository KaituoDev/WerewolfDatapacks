## CONTEXT: a sadist who has just ran ww:player/death

tag @s add this
execute as @e[tag=alive,tag=masochist,scores={id=1..}] if score @s id = @p[tag=this] scapegoatTarget run tag @s add currentTarget
tag @s remove this

scoreboard players set %avoid var 0
execute if entity @e[tag=currentTarget] run scoreboard players set %avoid var 1

# riot mode extra effects
execute if score %avoid var matches 1 if predicate ww:mode/riot run scoreboard players add @s invisible 3
execute if score %avoid var matches 1 if predicate ww:mode/riot run effect give @s speed 3 1 true
execute if score %avoid var matches 1 if predicate ww:mode/riot run scoreboard players add @s immune 3

# ww:player/dead could lead to a chain of variable changes
execute if score %avoid var matches 0 run scoreboard players set @s dead 1

execute if score %avoid var matches 1 as @e[tag=currentTarget,limit=1] run function ww:player/death/sadist

tag @e[tag=currentTarget] remove currentTarget