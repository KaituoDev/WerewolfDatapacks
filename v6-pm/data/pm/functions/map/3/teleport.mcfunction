scoreboard players set @s TP_PAD_CD 200

tag @a[tag=alive,distance=..2] add pm_teleported

execute if entity @s[tag=red_1] run tp @a[tag=alive,distance=..2] @e[type=armor_stand,tag=red_2,limit=1]
execute if entity @s[tag=red_2] run tp @a[tag=alive,distance=..2] @e[type=armor_stand,tag=red_1,limit=1]

execute if entity @s[tag=blue_1] run tp @a[tag=alive,distance=..2] @e[type=armor_stand,tag=blue_2,limit=1]
execute if entity @s[tag=blue_2] run tp @a[tag=alive,distance=..2] @e[type=armor_stand,tag=blue_1,limit=1]

execute if entity @s[tag=yellow_1] run tp @a[tag=alive,distance=..2] @e[type=armor_stand,tag=yellow_2,limit=1]
execute if entity @s[tag=yellow_2] run tp @a[tag=alive,distance=..2] @e[type=armor_stand,tag=yellow_1,limit=1]