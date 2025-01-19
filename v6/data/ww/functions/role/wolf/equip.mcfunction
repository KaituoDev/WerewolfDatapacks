execute if predicate ww:night if predicate ww:mode/riot run function ww:item/skill/suit/on

execute if entity @s[tag=wolf] run function ww:item/skill/reveal/wolf
execute if entity @s[tag=wolf] if predicate ww:night if predicate ww:mode/debate run function ww:item/skill/radio

execute if entity @s[tag=black] run function ww:role/wolf/black/equip
execute if entity @s[tag=white] run function ww:role/wolf/white/equip
execute if entity @s[tag=hijack] run function ww:role/wolf/hijack/equip
execute if entity @s[tag=snow] run function ww:role/wolf/snow/equip
execute if entity @s[tag=alpha] run function ww:role/wolf/alpha/equip
execute if entity @s[tag=rage] run function ww:role/wolf/rage/equip

# debate mode vote book is handled in ww:session/wolf/init