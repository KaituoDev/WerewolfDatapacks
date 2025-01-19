data modify storage ww:game chat.radio set from entity @s Inventory[{Slot:-106b}].tag.pages[0]
execute if predicate ww:offhand/writable_book run scoreboard players set %interpret var 0
execute if predicate ww:offhand/written_book run scoreboard players set %interpret var 1

function ww:skill/radio/send

clear @s writable_book{radio:1b}
clear @s written_book{radio:1b}

function ww:item/skill/radio