scoreboard players operation @s wolfVote = @s localVoteTrigger

tag @s add this
execute as @a[scores={localId=1..},tag=alive] if score @s localId = @p[tag=this] wolfVote run tag @s add currentTarget
tag @s remove this

# let both wolf and trickster know
execute if entity @a[tag=currentTarget] run tellraw @a[scores={onWolfList=1..}] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"一名狼人想要殺 ","bold":false,"color":"white"},{"selector":"@p[tag=currentTarget]","color":"green","bold":true}]

execute unless entity @a[tag=currentTarget] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"投票失敗， 玩家不存在","color":"red","bold":true}]
execute unless entity @a[tag=currentTarget] run scoreboard players set @s wolfVote -1

function ww:vote/wolf/count
# also display votes in wolf chat
function ww:vote/wolf/display

tag @a remove currentTarget