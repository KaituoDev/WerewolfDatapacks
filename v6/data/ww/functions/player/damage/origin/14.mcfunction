## Running as a player who hit some entity

advancement revoke @s only ww:damage/14
tag @s add origin
execute as @e[scores={id=1..},tag=!origin] if score @s id matches 14 run function ww:player/damage/victim
tag @s remove origin