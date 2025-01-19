function ww:skill/__init

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"已脫裝"}]

# clear @s netherite_axe
clear @s warped_fungus_on_a_stick{suit_off:1b}
clear @s writable_book
clear @s written_book{radio:1b}
clear @s compass{skill:1b}

function ww:item/skill/suit/on

playsound minecraft:item.armor.equip_leather master @s