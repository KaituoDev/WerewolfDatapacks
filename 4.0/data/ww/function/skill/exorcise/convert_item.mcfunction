# context: @s = player | villager

clear @s

give @s netherite_axe[item_name='{"bold":true,"color":"red","italic":false,"text":"狼人的门牙"}', \
    unbreakable={show_in_tooltip:false},custom_data={killer_weapon: false}] 1

function ww:config/item/pool_info
function ww:book/player_role

execute if entity @s[tag=ww.suit_up] run function ww:skill/exorcise/suit_up

execute if entity @s[tag=!ww.suit_up] run function ww:skill/suit_up/item
execute if entity @s[tag=ww.suit_up] run function ww:skill/suit_off/item
