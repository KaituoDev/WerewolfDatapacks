execute if entity @s[tag=wolf] run function ww:role/wolf/equip

execute if entity @s[tag=seer] run function ww:role/seer/equip
execute if entity @s[tag=hunter] run function ww:role/hunter/equip
execute if entity @s[tag=cupid] run function ww:role/cupid/equip
execute if entity @s[tag=witch] run function ww:role/witch/equip
execute if entity @s[tag=trickster] run function ww:role/trickster/equip
execute if entity @s[tag=siren] run function ww:role/siren/equip
execute if entity @s[tag=ninja] run function ww:role/ninja/equip
execute if entity @s[tag=sadist] run function ww:role/sadist/equip
execute if entity @s[tag=masochist] run function ww:role/masochist/equip
execute if entity @s[tag=digger] run function ww:role/digger/equip
execute if entity @s[tag=knight] run function ww:role/knight/equip
execute if entity @s[tag=guardian] run function ww:role/guardian/equip
execute if entity @s[tag=villager] run function ww:role/villager/equip

execute if entity @s[tag=wraith] run function ww:role/wraith/equip
execute if entity @s[tag=voodoo] run function ww:role/voodoo/equip
execute if entity @s[tag=bewitcher] run function ww:role/bewitcher/equip

execute if predicate ww:night if score %gacha_mode system matches 1 run function ww:item/skill/gacha
execute if predicate ww:night if score @s ultimate matches 1.. run function ww:item/skill/instant_death