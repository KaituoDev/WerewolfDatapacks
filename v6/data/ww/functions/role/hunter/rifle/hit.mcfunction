## CONTEXT: @s = source player, @p[tag=correctStare] = target player
## Current location: target player's location

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

execute if entity @s[tag=!fool] run scoreboard players operation @s hunterTarget = @p[tag=correctStare] id

execute if entity @a[tag=correctStare,predicate=!ww:invis] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"獵槍命中 ","color":"white","bold":false},{"selector":"@p[tag=correctStare]","color":"green","bold":true}]

# execute if entity @a[tag=correctStare,predicate=!ww:invis] if predicate ww:mainhand/rifle run item modify entity @s weapon.mainhand ww:skill/rifle_hit
# execute if entity @a[tag=correctStare,predicate=!ww:invis] if predicate ww:offhand/rifle run item modify entity @s weapon.offhand ww:skill/rifle_hit

execute if entity @a[tag=correctStare,predicate=ww:invis] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"獵槍命中 ","color":"white","bold":false},{"text":"隱形的玩家","color":"green","bold":true}]