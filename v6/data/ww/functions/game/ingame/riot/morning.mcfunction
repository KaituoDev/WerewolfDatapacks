# Riot Glow
execute store result score %alives var if entity @a[tag=alive]
execute if score %alives var <= %riot_glow system run effect give @a[tag=alive] glowing 1 0 true

# Riot Morning Kit
execute if score %day system matches 2.. as @a[tag=alive] unless data entity @s Inventory[{tag:{vote:1b,morning:1b}}] run function ww:item/kit/morning
execute if score %day system matches 2.. as @a[tag=alive] unless score @s skip matches 1.. unless data entity @s Inventory[{tag:{skill:1b,skip:1b}}] run function ww:item/kit/morning
execute if score %day system matches 2.. as @a[tag=alive] unless data entity @s Inventory[{tag:{skill:1b,void:1b}}] run function ww:item/kit/morning