## CONTEXT: @s = cupid
## OUTPUT: %success var, entity @p[tag=currentTarget]

## Cannot pair someone who has been paired already, otherwise cupidPair/cupidSource scores would be overwritten

tag @s add this
execute as @a[scores={id=1..},tag=alive,tag=!pairA,tag=!pairB] if score @s id = @p[tag=this] voteTrigger run tag @s add currentTarget
tag @s remove this

## CONTEXT: @s = cupid, @p[tag=currentTarget] = player being paired

execute store success score %success var if entity @a[tag=currentTarget]

tag @p[tag=currentTarget] add lovers

# store cupid's global id into paired player's cupidSource
scoreboard players operation @p[tag=currentTarget] cupidSource = @s id