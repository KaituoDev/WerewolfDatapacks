function ww:book/init

function ww:book/local/pages
execute if entity @s[tag=fool] run function ww:book/potion/death
execute if entity @s[tag=!fool] run function ww:book/potion/heal

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.witch set value 1b

data modify block 0 0 0 Items[0].tag.potion_heal set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}