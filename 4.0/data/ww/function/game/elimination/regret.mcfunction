# context: @s = player

function ww:player/_get_state {name: "playerElimination"}
execute unless data storage ww:output playerState run return run \
  function ww:game/elimination/_info {event: 'non_selected', uuid: ''}

# announce
data modify storage ww:temp infoInput set value {event: 'clear'}
data modify storage ww:temp infoInput.uuid set from storage ww:output playerState
function ww:game/elimination/_info with storage ww:temp infoInput

# remove state
function ww:player/_clear_state {name: "playerElimination"}

function ww:game/elimination/calculate