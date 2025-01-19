## Running as player killed by hunter
## CONTEXT: @s = victim, @e[tag=this,limit=1] = hunter

execute if score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"","bold":false},{"selector":"@s","color":"green","bold":true},{"text":" 被 ","color":"white","bold":false},{"selector":"@e[tag=this,limit=1]","color":"red","bold":true},{"text":" 在死前拿獵槍擊殺","color":"white","bold":false}]

execute unless score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@s","bold":true},{"text":" 已死亡","color":"white","bold":false}]
execute unless score %death_reason system matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"","bold":false},{"text":"你被 ","color":"white","bold":false},{"selector":"@e[tag=this,limit=1]","color":"red","bold":true},{"text":" 在死前拿獵槍擊殺","color":"white","bold":false}]

tag @e[tag=this] remove this

function ww:player/death