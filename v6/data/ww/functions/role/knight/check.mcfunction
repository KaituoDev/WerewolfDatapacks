## CONTEXT: @s = source player, @p[tag=correctStare] = target player
## Current location: target player's location

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@s","color":"green","bold":true},{"text":" 向 ","color":"white","bold":false},{"selector":"@p[tag=correctStare]","color":"red","bold":true},{"text":" 發起決鬥","color":"white","bold":false}]

execute store success score %staring_bads var if entity @a[tag=correctStare,tag=bads]

execute if entity @s[tag=!fool] if score %staring_bads var matches 1 as @p[tag=correctStare] run function ww:vote/knight/success
execute if entity @s[tag=!fool] if score %staring_bads var matches 0 run function ww:vote/knight/death

execute if entity @s[tag=fool] if score %staring_bads var matches 1 run function ww:vote/knight/beaten
execute if entity @s[tag=fool] if score %staring_bads var matches 0 as @p[tag=correctStare] run function ww:vote/knight/mistaken

execute if entity @s[tag=!fool] if score %staring_bads var matches 1 as @p[tag=correctStare] run function ww:player/death
execute if entity @s[tag=!fool] if score %staring_bads var matches 0 run function ww:player/death
execute if entity @s[tag=fool] if score %staring_bads var matches 1 run function ww:player/death
execute if entity @s[tag=fool] if score %staring_bads var matches 0 as @p[tag=correctStare] run function ww:player/death

scoreboard players remove @s duel 1
clear @s warped_fungus_on_a_stick{duel:1b}