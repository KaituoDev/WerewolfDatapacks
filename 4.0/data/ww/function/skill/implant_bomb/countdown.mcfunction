# context: @s = player[scores={ww.bomb=1..},alive]

scoreboard players remove @s ww.bomb 1

execute if score @s ww.bomb matches 1.. run return 0

execute at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 1 50 force
execute at @s run playsound minecraft:entity.dragon_fireball.explode master @a[distance=..10]
scoreboard players reset @s ww.bomb
function ww:player/death/explosion