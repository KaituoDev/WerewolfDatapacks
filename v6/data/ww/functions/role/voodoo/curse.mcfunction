## CONTEXT: @s = player hit by a cursed bone, @p[tag=origin] = source player
## Ran by ww:player/damage/victim and ww:vote/curse

execute store success score %success var if entity @a[tag=origin,predicate=!ww:invis]
execute if predicate ww:mode/debate run scoreboard players set %success var 1

execute if score %success var matches 1 unless entity @a[tag=origin,tag=fool] run scoreboard players add @s curse 1
execute if score %success var matches 1 run scoreboard players add @p[tag=origin,tag=fool] curse 1

execute if score %success var matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"你受到了一層詛咒, 目前總共有 ","bold":false},{"score":{"name":"@s","objective":"curse"},"color":"red","bold":true},{"text":" 層, 3層以上會死","color":"white","bold":false}]

execute if score %success var matches 1 if predicate ww:mode/riot if entity @s[predicate=!ww:invis] run tellraw @p[tag=origin] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"你對 ","bold":false},{"selector":"@s","color":"green","bold":true},{"text":" 施加了1層詛咒","color":"white","bold":false}]
execute if score %success var matches 1 if predicate ww:mode/riot if entity @s[predicate=ww:invis] run tellraw @p[tag=origin] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"你對 ","bold":false},{"text":"隱形的玩家","color":"green","bold":true},{"text":" 施加了1層詛咒","color":"white","bold":false}]

execute if score %success var matches 1 if predicate ww:mode/debate run tellraw @p[tag=origin] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"你對 ","bold":false},{"selector":"@s","color":"green","bold":true},{"text":" 施加了1層詛咒","color":"white","bold":false}]

execute if score %success var matches 0 run tellraw @a[tag=origin] [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":" 解除隱形後才可施加詛咒"}]

execute if score %success var matches 1 run clear @p[tag=origin] bone{curse:1b}
execute if score %success var matches 1 run clear @s written_book{vote:1b,curse:1b}