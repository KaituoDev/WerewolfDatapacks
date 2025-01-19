## CONTEXT: player who has a cupidPair score, and is dead

tag @s add this
tag @a remove currentTarget

execute as @a[tag=cupid] if score @s id = @p[tag=this] cupidSource run tag @s add currentCupid
execute as @a[tag=pairB,tag=alive] if score @s cupidPair = @p[tag=this] id run tag @s add currentTarget

execute if score %death_reason system matches 1 if entity @a[tag=currentTarget] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@p[tag=currentTarget]","bold":true},{"text":" 跟著 ","bold":false},{"selector":"@s","bold":true},{"text":" 殉情了","bold":false}]

execute unless score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@s","bold":true},{"text":" 已死亡","color":"white","bold":false}]
execute unless score %death_reason system matches 1 if entity @a[tag=currentTarget] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@p[tag=currentTarget]","bold":true},{"text":" 跟著你殉情了","bold":false}]

tag @s remove this
tag @a remove currentCupid

# ww:player/death doesn't show messages
execute as @a[tag=currentTarget] run function ww:player/death

tag @a remove currentTarget