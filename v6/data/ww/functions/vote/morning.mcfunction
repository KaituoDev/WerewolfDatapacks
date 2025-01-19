data modify storage ww:game DISPLAY.temp set value '{"text":" 票了 ","color":"white","bold":false}'
execute if score @s morningVote matches 1.. run data modify storage ww:game DISPLAY.temp set value '{"text":" 改票 ","color":"white","bold":false}'

scoreboard players operation @s morningVote = @s localVoteTrigger

tag @s add this
execute as @a[scores={localId=1..},tag=!this] if score @s localId = @p[tag=this] morningVote run tag @s add currentTarget
tag @s remove this

execute if entity @a[tag=currentTarget] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@s","bold":true,"color":"green"},{"storage":"ww:game","nbt":"DISPLAY.temp","interpret":true},{"selector":"@p[tag=currentTarget]","color":"red","bold":true}]

execute unless entity @a[tag=currentTarget] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"不得選此玩家","color":"red","bold":true}]
execute unless entity @a[tag=currentTarget] run scoreboard players set @s morningVote -1

function ww:vote/morning/count

tag @a remove currentTarget