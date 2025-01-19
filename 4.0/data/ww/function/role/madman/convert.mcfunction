# context: @s = player | villager

# get current role object
function ww:player/_get_state {name: 'playerRole'}
execute unless data storage ww:output playerState run return fail

data modify storage ww:temp setStateInput set value {name: 'playerRole'}
data modify storage ww:temp setStateInput.value set from storage ww:output playerState

data modify storage ww:temp setStateInput.value.campaign set value {id: 'bads', color: 'red', name: '狼人陣營'}
data modify storage ww:temp setStateInput.value.isWolf set value 1

function ww:chat/_dm { \
  type: 'info', \
  message: '狼人陣營全滅，條件達成，自動轉為狼人陣營', \
}

# set the new state
function ww:player/_set_state with storage ww:temp setStateInput

# sanitize tags
function ww:player/tag/sanitize