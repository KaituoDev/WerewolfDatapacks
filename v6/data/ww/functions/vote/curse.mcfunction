tag @s add this
execute as @a[scores={localId=1..},tag=!this] if score @s localId = @p[tag=this] localVoteTrigger run tag @s add currentTarget
tag @s remove this

tag @s add origin
execute as @p[tag=currentTarget] run function ww:role/voodoo/curse
tag @s remove origin

execute unless entity @a[tag=currentTarget] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"玩家不存在"}]

tag @a remove currentTarget