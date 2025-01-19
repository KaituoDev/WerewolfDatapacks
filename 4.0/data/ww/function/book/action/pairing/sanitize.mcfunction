# context: @s = player | villager
# storage: ww:temp pairing

# go through pairing 1 by 1
# check if player is alive by uuid
# if not, remove from the array

data modify storage ww:temp arr set from storage ww:temp pairing

function ww:book/action/pairing/sanitize/loop

data modify storage ww:temp setStateInput set value {path: 'pairing'}
data modify storage ww:temp setStateInput.value set from storage ww:temp pairing
function ww:player/role/_set_state with storage ww:temp setStateInput