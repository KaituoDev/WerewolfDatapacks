execute as @a[predicate=pm:parkour_water] run tp @s -8 41 87 -180 0

execute unless predicate pm:started run return fail

execute if score %map ww.system matches 1 run return run function pm:map/museum
execute if score %map ww.system matches 2 run return run function pm:map/crystal
execute if score %map ww.system matches 6 run return run function pm:map/underground
execute if score %map ww.system matches 11 run return run function pm:map/mansion
# function pm:map/city
# function pm:map/city/sofa/setblock
# execute unless predicate ww:started at 4ea3b9e5-2a17-4f22-a146-72b68bf85928 as @a[gamemode=!spectator,distance=..4] unless data entity @s Inventory[{tag:{stew:1b}}] run give @s mushroom_stew{display:{Name:'{"text":"母汤","color":"gold","bold":true,"italic":false}',Lore:['{"text":"一碗母汤","color":"white","italic":false}']},stew:1b} 1