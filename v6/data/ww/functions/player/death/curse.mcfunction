## Running as player killed due to curse layers reached 3 layers
## CONTEXT: @s = target player

execute if score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"","bold":false},{"selector":"@s","color":"green","bold":true},{"text":" 詛咒層數達到 ","color":"white","bold":false},{"score":{"name":"@s","objective":"curse"},"color":"red","bold":true},{"text":" 層, 因此身亡","color":"white","bold":false}]

execute unless score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@s","bold":true},{"text":" 已死亡","color":"white","bold":false}]
execute unless score %death_reason system matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"你的詛咒層數達到 ","color":"white","bold":false},{"score":{"name":"@s","objective":"curse"},"color":"red","bold":true},{"text":" 層, 因此身亡","color":"white","bold":false}]

function ww:player/death