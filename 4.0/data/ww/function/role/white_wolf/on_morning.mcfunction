# context: @s = player | villager

function ww:skill/friends_list/item
execute if score %days ww.system matches 2.. run function ww:skill/explosion/item

tag @s remove ww.suit_up