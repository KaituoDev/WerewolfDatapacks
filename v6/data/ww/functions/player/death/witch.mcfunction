## Running as player killed by witch

execute if score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"","color":"white","bold":false},{"selector":"@s","bold":true},{"text":" 被女巫毒殺了","bold":false}]

execute unless score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@s","bold":true},{"text":" 已死亡","color":"white","bold":false}]
execute unless score %death_reason system matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"你被女巫毒殺了","bold":false}]

execute if predicate ww:mode/riot run function ww:player/death