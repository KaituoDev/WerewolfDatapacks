## CONTEXT: @s is a player
## OUTPUT: storage ww:game role.name, role.fool, role.color

data modify storage ww:game role.name set value '{"text":"旁觀者"}'
data modify storage ww:game role.fool set value '{"text":"","color":"white"}'
data modify storage ww:game role.color set value '{"text":"","color":"white"}'

# fool
execute if entity @s[tag=fool] run data modify storage ww:game role.fool set value '{"text":"蠢"}'

# color
execute if entity @s[tag=bads] run data modify storage ww:game role.color set value '{"text":"","color":"red"}'
execute if entity @s[tag=goods] run data modify storage ww:game role.color set value '{"text":"","color":"yellow"}'
execute if entity @s[tag=wraiths] run data modify storage ww:game role.color set value '{"text":"","color":"dark_red"}'
execute if entity @s[tag=cupid] run data modify storage ww:game role.color set value '{"text":"","color":"#ffc0cb"}'

function ww:role/name/switcher
