execute store success score %bads var if entity @e[type=area_effect_cloud,tag=button,tag=bads]
execute store success score %goods var if entity @e[type=area_effect_cloud,tag=button,tag=goods]

execute unless entity @s[tag=has_role] if score %bads var matches 0 run function ww:role/assign/buttons/bads
execute unless entity @s[tag=has_role] if score %goods var matches 0 run function ww:role/assign/buttons/goods

execute unless entity @s[tag=has_role] if score %bads var matches 1.. if score %goods var matches 1.. run function ww:role/assign/buttons/random
