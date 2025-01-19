# Doors
execute if predicate ww:morning run fill -774 60 365 -774 63 366 minecraft:iron_block
execute if predicate ww:morning run fill -739 61 395 -738 58 395 minecraft:air
execute if predicate ww:morning run fill -740 58 349 -740 61 350 minecraft:iron_block
execute if predicate ww:morning run fill -764 66 343 -764 69 342 minecraft:iron_block
execute if predicate ww:morning run fill -768 58 390 -768 61 389 minecraft:iron_block
execute if predicate ww:morning run fill -716 53 378 -717 56 378 minecraft:iron_block
execute if predicate ww:night run fill -774 60 365 -774 63 366 minecraft:air
execute if predicate ww:night run fill -739 61 395 -738 58 395 minecraft:iron_block
execute if predicate ww:night run fill -740 58 349 -740 61 350 minecraft:air
execute if predicate ww:night run fill -764 66 343 -764 69 342 minecraft:air
execute if predicate ww:night run fill -768 58 390 -768 61 389 minecraft:air
execute if predicate ww:night run fill -716 53 378 -717 56 378 minecraft:air

effect give @a jump_boost 1 2 true
execute as @a at @s if block ~ ~-1 ~ black_concrete run effect give @s jump_boost 1 10 true

execute if predicate ww:morning run effect give @a night_vision 100000 0 true

execute as @e[type=armor_stand,tag=maze_tp_pad] unless score @s TP_PAD_CD matches 1.. at @s if entity @a[tag=alive,tag=!pm_teleported,distance=..2] run function pm:map/3/teleport
execute as @e[type=armor_stand,tag=maze_tp_pad,scores={TP_PAD_CD=1..}] run function pm:map/3/countdown

execute as @e[type=armor_stand,tag=maze_tp_pad] unless score @s TP_PAD_CD matches 1.. run data modify entity @s CustomName set value '{"text":"可傳送","color":"green","bold":"true"}'


execute as @a[tag=pm_teleported] at @s unless entity @e[type=armor_stand,tag=maze_tp_pad,distance=..2] run tag @s remove pm_teleported