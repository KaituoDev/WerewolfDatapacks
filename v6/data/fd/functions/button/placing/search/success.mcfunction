execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

tag @s add this

execute align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Particle:"block air",NoGravity:1b,Radius:0.5f,Duration:2147483647,Tags:["button","summoned"]}

scoreboard players operation @e[type=area_effect_cloud,tag=summoned,tag=button,limit=1] owner = @s id

tag @e[type=area_effect_cloud,tag=summoned] remove summoned

forceload add ~ ~

tag @s remove this
tag @s remove placing

function fd:button/used/reset

clear @s #minecraft:buttons
tellraw @s [{"translate":"成功放置按鈕!","color":"green","bold":true}]
