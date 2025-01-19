# context: @s = player | villager
# inputs: {name, from}

function ww:player/_get_state {name: 'playerRoleJourney'}
data modify storage ww:temp setStateInput set value {name: 'playerRoleJourney'}
data modify storage ww:temp setStateInput.value set from storage ww:output playerState
$data modify storage ww:temp setStateInput.value append value {name: '$(name)', from: '$(from)'}
function ww:player/_set_state with storage ww:temp setStateInput

data remove storage ww:temp setStateInput