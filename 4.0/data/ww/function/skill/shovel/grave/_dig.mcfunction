# context: @s = player | villager
# inputs: {uuid, player, role, campaign, color}

clear @s *[minecraft:custom_data~{shovel:true}]

$function ww:chat/_dm {type: 'rich_info', message: '[ {"text":"你挖起了 ","color":"white","bold":false},{"text":"$(player)","color":"green","bold":true},{"text":" 的墓碑, 继承了 ","color":"white","bold":false},{"text":"$(role)","color":"$(color)","bold":true}]'}

# get player role state
function ww:player/role/get_state
data modify storage ww:temp setStateInput set value {name: 'playerRoleState', value: {}}
data modify storage ww:temp setStateInput.value set from storage ww:output playerState

# merge with state from grave
$execute as @n[nbt={UUID:$(uuid)}] run function ww:player/role/get_state
data remove storage ww:output playerState.hijackedHead
data remove storage ww:output playerState.pairing

data modify storage ww:temp setStateInput.value merge from storage ww:output playerState

# modify player role state
function ww:player/_set_state with storage ww:temp setStateInput

# get player role
$execute as @n[nbt={UUID:$(uuid)}] run function ww:player/_get_state {name: 'playerRole'}
data modify storage ww:temp setStateInput set value {name: 'playerRole', value: {}}
data modify storage ww:temp setStateInput.value set from storage ww:output playerState

# modify player role state
function ww:player/_set_state with storage ww:temp setStateInput
function ww:player/tag/sanitize

# clean up
data remove storage ww:temp setStateInput

# record in role journey for @s
$function ww:player/role/_add_journey {from: '$(player)', name: '$(role)'}

function ww:stats/game_start
schedule function ww:ending/check 1s