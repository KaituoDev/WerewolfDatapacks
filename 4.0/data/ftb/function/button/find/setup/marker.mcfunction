# context: @s = interaction, @n[tag=this] = source player

tag @s add ftb.marker
tag @s add ftb.entity

data modify entity @s data.owner set from entity @n[tag=this] UUID