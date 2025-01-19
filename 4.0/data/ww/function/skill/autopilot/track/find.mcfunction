# context: @s = some entity like wolf or zombified_piglin
# output: ww:output autopilotTarget

data remove storage ww:output autopilotTarget

# 1. find owner
function ww:player/_get_state {name: 'mountOwner'}
execute unless data storage ww:output playerState run return fail

data modify storage ww:temp findTargetInput set value {}
data modify storage ww:temp findTargetInput.owner set from storage ww:output playerState
function ww:skill/autopilot/track/_find with storage ww:temp findTargetInput