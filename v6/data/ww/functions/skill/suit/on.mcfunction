function ww:skill/__init

item replace entity @s armor.head with minecraft:diamond_helmet{invis:1b}
item replace entity @s armor.chest with minecraft:diamond_chestplate{invis:1b}
item replace entity @s armor.legs with minecraft:diamond_leggings{invis:1b}
item replace entity @s armor.feet with minecraft:diamond_boots{invis:1b}

function ww:item/enchant/bind

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"已著裝"}]

clear @s warped_fungus_on_a_stick{suit_on:1b}
function ww:item/skill/suit/off

## give radio book
function ww:item/skill/radio

## give tracker (replaced with holding axe and show nav particles)
# function ww:item/skill/tracker/goods

## give axe, trickster axe won't do anything
function ww:item/skill/axe

playsound minecraft:item.armor.equip_netherite master @s