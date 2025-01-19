## Running as a player who hit some entity

advancement revoke @s only ww:damage/27
tag @s add origin
execute as @e[scores={id=1..},tag=!origin] if score @s id matches 27 run function ww:player/damage/victim
tag @s remove origin