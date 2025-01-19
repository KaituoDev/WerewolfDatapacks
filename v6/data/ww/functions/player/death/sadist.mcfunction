## Running as masochist dying for sadist

execute if score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"","color":"white","bold":false},{"selector":"@s","bold":true},{"text":" 替抖S教主死了","bold":false}]

execute unless score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@s","bold":true},{"text":" 已死亡","color":"white","bold":false}]
execute unless score %death_reason system matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"你替抖S教主死了","bold":false}]

function ww:player/death