## CONTEXT: a player
## OUTPUT: storage ww:game role.fool
## function ww:role/name already sets fool value
## this function just needs to set to blank based on conditions

execute if entity @s[tag=alive] run data modify storage ww:game role.fool set value '{"text":""}'