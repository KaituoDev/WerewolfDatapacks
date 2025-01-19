# context: @s = player | villager

scoreboard players reset @s ww.isSleeping
execute at @s run tp ~ ~ ~
function ww:chat/_dm {type: 'warn', message: '起来嗨'}