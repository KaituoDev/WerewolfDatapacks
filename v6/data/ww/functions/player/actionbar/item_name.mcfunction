## CONTEXT: a player
## OUTPUT: storage ww:game actionbar.item_name

execute if data entity @s Inventory[{Slot:-106b}].tag.display.Name run data modify storage ww:game actionbar.item_name set from entity @s Inventory[{Slot:-106b}].tag.display.Name
execute if data entity @s Inventory[{Slot:-106b}].tag.display.Name run data modify storage ww:game actionbar.item_name_combined set value '["<",{"storage":"ww:game","nbt":"actionbar.item_name","interpret":true},">"]'

execute if data entity @s SelectedItem.tag.display.Name run data modify storage ww:game actionbar.item_name set from entity @s SelectedItem.tag.display.Name
execute if data entity @s SelectedItem.tag.display.Name run data modify storage ww:game actionbar.item_name_combined set value '["<",{"storage":"ww:game","nbt":"actionbar.item_name","interpret":true},">"]'