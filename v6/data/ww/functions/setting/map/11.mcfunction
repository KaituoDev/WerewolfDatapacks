## set map or give two items to set location and set map

execute if score %koumi_map system matches 1 run function ww:setting/map/11/choose

execute if score %koumi_map system matches 0 run clear @s warped_fungus_on_a_stick{setting:1b}
execute if score %koumi_map system matches 0 run function ww:item/setting/map/11