# context: @s = player

data modify storage ww:temp updateMapInput set value {}
data modify storage ww:temp updateMapInput.index set from entity @s SelectedItem.components."minecraft:custom_data"."ww.map_index"
data modify storage ww:temp updateMapInput.name set from entity @s SelectedItem.components."minecraft:writable_book_content".pages[0].raw

clear @s writable_book[minecraft:custom_data~{ww.edit_map_name:true}]

function ww:config/board/action/map/edit/_name with storage ww:temp updateMapInput