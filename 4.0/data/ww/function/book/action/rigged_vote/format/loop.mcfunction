# context: @s = player | villager
# storage: ww:temp joinStringInput.inputs, ww:temp joinStringInput.strings

execute unless data storage ww:temp joinStringInput.inputs[0] run return 0

data modify storage ww:temp joinStringInput.strings append from storage ww:temp joinStringInput.inputs[0].player

data remove storage ww:temp joinStringInput.inputs[0]
function ww:book/action/rigged_vote/format/loop