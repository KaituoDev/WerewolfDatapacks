# context: @s = player

execute store result score %length ftb.var run data get storage ftb:memory BUTTONS
execute if score @s ftb.buttonIndex >= %length ftb.var run scoreboard players set @s ftb.buttonIndex 0

data modify storage ftb:temp getButtonInput set value {}
execute store result storage ftb:temp getButtonInput.index int 1 run scoreboard players get @s ftb.buttonIndex
function ftb:button/_get_name with storage ftb:temp getButtonInput

# validate button name output
execute unless data storage ftb:output buttonName run return fail

data modify storage ftb:temp getButtonInput.name set from storage ftb:output buttonName
function ftb:button/_get_button with storage ftb:temp getButtonInput