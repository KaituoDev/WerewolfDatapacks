# context: @s = player
# inputs: {uuid}

# remove self steal target role state first
function ww:player/role/_remove_state {path: 'stealTarget'}

# setup role journey items
data modify storage ww:temp selfRoleJourneyItem set value {}
$execute as @n[nbt={UUID: $(uuid)}] run function ww:player/name
data modify storage ww:temp selfRoleJourneyItem.from set from storage ww:output playerName

data modify storage ww:temp otherRoleJourneyItem set value {}
function ww:player/name
data modify storage ww:temp otherRoleJourneyItem.from set from storage ww:output playerName

# COPY @s.role tempRole
function ww:player/_get_state {name: 'playerRole'}
data modify storage ww:temp playerRole set from storage ww:output playerState
data modify storage ww:temp otherRoleJourneyItem.name set from storage ww:output playerState.name

# COPY @n[uuid].role @s.role
$execute as @n[nbt={UUID: $(uuid)}] run function ww:player/_get_state {name: 'playerRole'}
data modify storage ww:temp setStateInput set value {name: 'playerRole'}
data modify storage ww:temp selfRoleJourneyItem.name set from storage ww:output playerState.name
data modify storage ww:temp setStateInput.value set from storage ww:output playerState
function ww:player/_set_state with storage ww:temp setStateInput

# COPY tempRole @n[uuid].role
data modify storage ww:temp setStateInput set value {name: 'playerRole'}
data modify storage ww:temp setStateInput.value set from storage ww:temp playerRole
$execute as @n[nbt={UUID: $(uuid)}] run function ww:player/_set_state with storage ww:temp setStateInput

# intialize new role states
data modify storage ww:temp newSelfRoleState set value {}
data modify storage ww:temp newOtherRoleState set value {}
data modify storage ww:temp preservedSelfRoleState set value {}
data modify storage ww:temp preservedOtherRoleState set value {}

# get self role states
function ww:player/role/get_state

# perserve self states
data modify storage ww:temp preservedSelfRoleState.hijackedHead set from storage \
 ww:output playerState.hijackedHead
data modify storage ww:temp preservedSelfRoleState.pairing set from storage \
 ww:output playerState.pairing

# set up newOtherRoleState
data modify storage ww:temp newOtherRoleState set from storage ww:output playerState
data remove storage ww:temp newOtherRoleState.hijackedHead
data remove storage ww:temp newOtherRoleState.pairing

# get other role states
$execute as @n[nbt={UUID: $(uuid)}] run function ww:player/role/get_state

# perserve self states
data modify storage ww:temp preservedOtherRoleState.hijackedHead set from storage \
 ww:output playerState.hijackedHead
data modify storage ww:temp preservedOtherRoleState.pairing set from storage \
 ww:output playerState.pairing

# set up newSelfRoleState
data modify storage ww:temp newSelfRoleState set from storage ww:output playerState
data remove storage ww:temp newSelfRoleState.hijackedHead
data remove storage ww:temp newSelfRoleState.pairing

# merge states
data modify storage ww:temp newSelfRoleState merge from storage ww:temp preservedSelfRoleState
data modify storage ww:temp newOtherRoleState merge from storage ww:temp preservedOtherRoleState

# tellraw YoshinoBHL ["newSelfRoleState: ", {"storage":"ww:temp","nbt":"newSelfRoleState"}]
# tellraw YoshinoBHL ["newOtherRoleState: ", {"storage":"ww:temp","nbt":"newOtherRoleState"}]

# SET newSelfRoleState -> @s.roleState
data modify storage ww:temp setStateInput set value {name: 'playerRoleState', value: {}}
data modify storage ww:temp setStateInput.value set from storage ww:temp newSelfRoleState
function ww:player/_set_state with storage ww:temp setStateInput

# SET newOtherRoleState -> @n[uuid].roleState
data modify storage ww:temp setStateInput set value {name: 'playerRoleState', value: {}}
data modify storage ww:temp setStateInput.value set from storage ww:temp newOtherRoleState
$execute as @n[nbt={UUID: $(uuid)}] run function ww:player/_set_state with storage ww:temp setStateInput

# swap lovers
$execute if function ww:config/flag/can_steal_lovers run function ww:skill/steal/_swap_lovers {target: $(uuid)}

# clean up
data remove storage ww:temp setStateInput

function ww:player/tag/sanitize
$execute as @n[nbt={UUID: $(uuid)}] run function ww:player/tag/sanitize

# record in role journey for @s
function ww:player/role/_add_journey with storage ww:temp selfRoleJourneyItem

# record in role journey for @n[uuid]
$execute as @n[nbt={UUID: $(uuid)}] run function ww:player/role/_add_journey with storage ww:temp otherRoleJourneyItem

# broadcast
$execute if entity @s[type=player] run function ww:chat/_dm {type: 'rich_info', message: '[{"text":"你与","color":"white"},{"selector":"@n[nbt={UUID: $(uuid)}]"},{"text":"互换职业","bold":true}]'}
$execute as @n[nbt={UUID: $(uuid)},type=player] run function ww:chat/_dm {type: 'rich_info', message: '[{"text":"你被","color":"white"},{"text":"盗贼偷走职业","bold":true}]'}