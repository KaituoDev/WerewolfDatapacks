scoreboard players remove %ray var 1

# particle minecraft:dust 0 0 0 1 ~ ~ ~ 0 0 0 0.1 1

execute as @e[dx=0,tag=!this,type=#ww:targets,tag=alive] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add correctStare
execute if entity @e[tag=correctStare] run scoreboard players set %ray var -1
execute if entity @e[tag=correctStare] run scoreboard players set @s result 1
execute as @e[tag=correctStare,limit=1] at @s run function ww:player/looking_at/switcher

execute if score %ray var matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #ww:transparent run function ww:player/looking_at/__traditional
