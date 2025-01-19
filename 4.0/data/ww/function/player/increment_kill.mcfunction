# context: @s = player | villager

scoreboard players add @s ww.kills 1
function ww:chat/_dm {type: 'info', message: '擊殺數 + 1'}

execute if entity @s[tag=bloody_wolf,type=player] unless predicate ww:has_blood_moon_item run function ww:skill/blood_moon/item