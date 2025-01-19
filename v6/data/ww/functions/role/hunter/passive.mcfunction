# hunterTarget is on the dying hunter

tag @s add this
execute as @e[scores={id=1..},tag=alive,tag=!this] if score @s id = @e[tag=this,limit=1] hunterTarget run tag @s add currentHunterTarget

execute as @e[tag=currentHunterTarget,limit=1] run function ww:player/death/hunter

tag @s remove this
tag @e[tag=currentHunterTarget] remove currentHunterTarget