# context: @s = player
# location: at @s

execute if entity @s[tag=ftb.placement.denied] unless predicate ftb:has_button run function ftb:button/get_button
tag @s remove ftb.placement.denied

title @s actionbar ""