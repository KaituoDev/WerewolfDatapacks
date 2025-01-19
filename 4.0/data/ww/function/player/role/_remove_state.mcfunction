# context: @s = player | villager
# inputs: {path}

data modify storage ww:temp setRoleStateInput set value {name: 'playerRoleState', value: {}}
execute if function ww:player/role/get_state run \
  data modify storage ww:temp setRoleStateInput.value set from storage ww:output playerState
$data remove storage ww:temp setRoleStateInput.value.$(path)

function ww:player/_set_state with storage ww:temp setRoleStateInput