# context: @s = player | villager
# storage: ww:temp riggedVoteRecords

# go through riggedVoteRecords 1 by 1
# check if player is alive by uuid
# if not, remove from the array

data modify storage ww:temp arr set from storage ww:temp riggedVoteRecords

function ww:book/action/rigged_vote/sanitize/loop

data modify storage ww:temp setStateInput set value {path: 'riggedVoteRecords'}
data modify storage ww:temp setStateInput.value set from storage ww:temp riggedVoteRecords
function ww:player/role/_set_state with storage ww:temp setStateInput