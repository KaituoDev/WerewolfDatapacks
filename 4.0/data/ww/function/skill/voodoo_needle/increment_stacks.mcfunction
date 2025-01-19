# context: @s = player | villager

execute store result score %curses ww.var run function ww:skill/voodoo_needle/get_stacks

execute unless score %curses ww.var matches 1.. run return 0

data modify storage ww:temp addStackInput set value {}
data modify storage ww:temp addStackInput.uuid set from entity @s UUID
data modify storage ww:temp addStackInput.source set from storage ww:output playerState.voodooCurse.source 
function ww:skill/voodoo_needle/_add_stack with storage ww:temp addStackInput