scoreboard players enable @a reveal
execute as @a[gamemode=spectator] if score @s reveal matches 1.. run function fix:reveal
scoreboard players reset @a[gamemode=!spectator] reveal