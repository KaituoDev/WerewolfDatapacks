# context: @s = player
# inputs: {id}

# use the id from roles[index], and find the proper full object from ww:memory
$function ww:role/_find_by_id {id: '$(id)'}

data modify storage ww:temp setStateInput set value {name: 'playerRole'}
data modify storage ww:temp setStateInput.value set from storage ww:output roleObj
data modify storage ww:temp selfRoleJourneyItem set value {from: ''}
data modify storage ww:temp selfRoleJourneyItem.name set from storage ww:output roleObj.name

function ww:player/_set_state with storage ww:temp setStateInput
function ww:player/tag/sanitize

# record role journey
function ww:player/role/_add_journey with storage ww:temp selfRoleJourneyItem