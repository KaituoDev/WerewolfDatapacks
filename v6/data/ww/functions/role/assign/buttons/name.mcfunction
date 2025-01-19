## CONTEXT: @s = button aec with role tags

function ww:role/name
data modify entity @s CustomName set from storage ww:game role.name
data modify entity @s CustomNameVisible set value 1b