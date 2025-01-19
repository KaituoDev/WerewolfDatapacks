# context: @s = player | villager
# scores: %maxVoteCount ww.system

function ww:player/_get_state {name: 'playerElimination'}
execute unless data storage ww:output playerState run return fail

data modify storage ww:temp sumInput set value {}
data modify storage ww:temp sumInput.uuid set from storage ww:output playerState
function ww:game/elimination/calculate/_sum with storage ww:temp sumInput
