## CONTEXT: alive knight player with knightTarget score
## In Debate Mode

tag @s add this
execute as @a[scores={id=1..}] if score @s id = @p[tag=this] knightTarget run tag @s add currentTarget
tag @s remove this

execute if entity @a[tag=currentTarget] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@s","color":"green","bold":true},{"text":" 向 ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]","color":"red","bold":true},{"text":" 發起決鬥","color":"white","bold":false}]

tag @a remove currentTarget