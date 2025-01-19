## CONTEXT: @s, @p[tag=this] = the witch looking at a player, @p[tag=correctStare] = target player

tellraw @p[tag=correctStare] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","color":"white","bold":false},{"text":"你獲得女巫的解藥, 效果無敵10秒"}]
tellraw @p[tag=correctStare,scores={curse=1..}] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","color":"white","bold":false},{"text":"同時清除所有詛咒層數"}]

scoreboard players add @p[tag=correctStare] immune 10
scoreboard players reset @p[tag=correctStare] curse


execute if entity @a[tag=correctStare,predicate=ww:invis] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你將解藥丟給隱形的玩家"}]
execute if entity @a[tag=correctStare,predicate=!ww:invis] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你將解藥丟給 "},{"selector":"@p[tag=correctStare]","bold":true}]


playsound minecraft:entity.experience_bottle.throw master @s
clear @s warped_fungus_on_a_stick{witch:1b}