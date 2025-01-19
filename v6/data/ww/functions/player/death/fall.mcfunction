## Running as players who fell to death

execute if score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"","color":"white","bold":false},{"selector":"@s","bold":true},{"text":" 摔死了","bold":false}]

execute unless score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@s","bold":true},{"text":" 已死亡","color":"white","bold":false}]
execute unless score %death_reason system matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"你摔死了","bold":false}]

scoreboard players reset @s damageResisted
scoreboard players set @s dead 1