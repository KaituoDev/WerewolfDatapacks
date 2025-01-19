tag @s add this

execute unless score %traditional_ray system matches 1 run function ww:player/looking_at/modern

execute if score %traditional_ray system matches 1 run function ww:player/looking_at/traditional

tag @s remove this
tag @e[tag=correctStare] remove correctStare