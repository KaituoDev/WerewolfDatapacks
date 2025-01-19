# context: @s = player
# storage: ww:temp joinStringInput, ww:temp currentSelections

execute unless data storage ww:temp currentSelections[0] run return 0

data modify storage ww:temp joinStringInput.strings append from storage ww:temp currentSelections[0].player
data remove storage ww:temp currentSelections[0]
function ww:book/build/rigged_vote/construct_current_selections