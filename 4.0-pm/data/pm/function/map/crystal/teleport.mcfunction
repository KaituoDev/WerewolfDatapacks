# scoreboard players set @s TP_PAD_CD 200

# tag @a[predicate=ww:alive,distance=..2] add pm_teleported

execute if entity @s[tag=red_1] run return run execute as @e[predicate=ww:alive,distance=..1] at @n[type=armor_stand,tag=red_2] run tp @s ^ ^ ^2
execute if entity @s[tag=red_2] run return run execute as @e[predicate=ww:alive,distance=..1] at @n[type=armor_stand,tag=red_1] run tp @s ^ ^ ^2

execute if entity @s[tag=blue_1] run return run execute as @e[predicate=ww:alive,distance=..1] at @n[type=armor_stand,tag=blue_2] run tp @s ^ ^ ^2
execute if entity @s[tag=blue_2] run return run execute as @e[predicate=ww:alive,distance=..1] at @n[type=armor_stand,tag=blue_1] run tp @s ^ ^ ^2

execute if entity @s[tag=yellow_1] run return run execute as @e[predicate=ww:alive,distance=..1] at @n[type=armor_stand,tag=yellow_2] run tp @s ^ ^ ^2
execute if entity @s[tag=yellow_2] run return run execute as @e[predicate=ww:alive,distance=..1] at @n[type=armor_stand,tag=yellow_1] run tp @s ^ ^ ^2