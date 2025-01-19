## CONTEXT: @s,@p[tag=this] = the witch looking at a player, @p[tag=correctStare] = target player

scoreboard players set %success var 0
execute at @p[tag=this] if entity @a[tag=correctStare,distance=..20] run scoreboard players set %success var 1

execute if score %success var matches 1 run function ww:role/witch/potion/__heal

execute if score %success var matches 0 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"請靠近該玩家, 需在20格內","color":"red","bold":true}]