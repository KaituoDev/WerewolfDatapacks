# context: @s = player | villager

function ww:skill/friends_list/item
execute if score @s ww.kills matches 1.. run function ww:skill/blood_moon/item

tag @s remove ww.suit_up