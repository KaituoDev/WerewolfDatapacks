scoreboard players set %ray var 400
scoreboard players reset @s result

execute at @s positioned ~ ~1.5 ~ run function ww:player/looking_at/__traditional

execute unless score @s result matches 1.. run function ww:player/looking_at/failed

tag @e[tag=correctStare] remove correctStare
scoreboard players reset @s result