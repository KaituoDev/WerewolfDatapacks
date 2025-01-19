# context: @s = player

# do player looking at
# store the uuid of the output into hijackedHead role state
# and equip

function ww:player/looking_at
data modify storage ww:temp setStateInput set value {path: 'hijackedHead'}
execute unless data storage ww:output lookingAt run return 0

data modify storage ww:temp setStateInput.value set from storage ww:output lookingAt
function ww:player/role/_set_state with storage ww:temp setStateInput

data modify storage ww:temp hijackInfoInput set value {}
data modify storage ww:temp hijackInfoInput.uuid set from storage ww:output lookingAt
function ww:skill/hijack/_info with storage ww:temp hijackInfoInput

execute if predicate ww:is_masked run function ww:skill/hijack/equip