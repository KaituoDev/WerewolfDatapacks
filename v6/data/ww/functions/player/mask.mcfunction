item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b}
loot replace entity @s armor.head loot ww:player_head

execute if entity @s[tag=hijacking] run function ww:skill/hijack/on

function ww:item/enchant/bind