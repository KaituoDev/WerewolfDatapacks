## CONTEXT: @s,@p[tag=this] = the hijack wolf looking at a player, @p[tag=correctStare] = target player

execute unless entity @p[tag=correctStare,scores={invisible=1..}] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"捕捉到 ","bold":true},{"selector":"@p[tag=correctStare]","color":"green"}]
execute if entity @p[tag=correctStare,scores={invisible=1..}] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"捕捉到 ","bold":true},{"text":"隱形的玩家","color":"green"}]

scoreboard players operation @s hijack = @p[tag=correctStare] id