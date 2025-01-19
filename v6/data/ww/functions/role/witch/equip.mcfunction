execute if predicate ww:mode/riot if predicate ww:night run function ww:item/skill/potion/potion_heal
execute if score @s deathPotion matches 1.. if predicate ww:mode/riot if predicate ww:night run function ww:item/skill/potion/potion_death

execute if predicate ww:mode/debate if predicate ww:night run function ww:book/potion_heal
execute if score @s deathPotion matches 1.. if predicate ww:mode/debate if predicate ww:night run function ww:book/potion_death