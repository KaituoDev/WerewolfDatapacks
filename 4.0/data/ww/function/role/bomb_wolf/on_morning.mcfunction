# context: @s = player | villager

function ww:skill/friends_list/item
execute if score %days ww.system matches 2.. run function ww:skill/implant_bomb/item

tag @s remove ww.suit_up