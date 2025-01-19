## CONTEXT: a knight player who did not chose bads to duel with

execute if score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@s","bold":true},{"text":" 發現決鬥對象不是狼人陣營, 自殺了","color":"white","bold":false}]

execute unless score %death_reason system matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"你發現決鬥對象不是狼人陣營, 自殺了","color":"white","bold":false}]