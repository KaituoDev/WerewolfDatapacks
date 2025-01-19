## CONTEXT: a ninja player who chose bads as scapegoat

execute if score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@s","bold":true},{"text":" 誤躲到狼人身旁, 因而死亡","color":"white","bold":false}]

execute unless score %death_reason system matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"你誤躲到狼人身旁, 因而死亡","color":"white","bold":false}]