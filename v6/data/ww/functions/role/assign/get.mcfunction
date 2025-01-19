execute store result score %bads var if entity @a[tag=bads,tag=has_role]
execute store result score %nonBads var if entity @a[tag=!bads,tag=has_role]

execute unless entity @s[tag=has_role] if score %bads var matches 0 run function ww:role/assign/get/bads
execute unless entity @s[tag=has_role] if score %nonBads var matches ..1 run function ww:role/assign/get/non_bads

execute unless entity @s[tag=has_role] if score %bads var matches 1.. if score %nonBads var matches 2.. run function ww:role/assign/get/random
