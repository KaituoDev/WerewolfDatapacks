# context: @s = player | villager

execute if score @s ww.invisItemCD matches 1.. run return run function ww:chat/_dm {type: 'warn', message: '技能還在冷卻'}

scoreboard players set @s ww.invisItemCD 300
scoreboard players add @s ww.forceInvis 200
execute if entity @s[tag=ww.fool] run effect give @s glowing 10 0 true