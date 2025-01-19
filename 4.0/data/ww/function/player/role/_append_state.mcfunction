# context: @s = player | villager
# inputs: {path, value}

data modify storage ww:temp setRoleStateInput set value {name: 'playerRoleState', value: {}}
execute if function ww:player/role/get_state run \
  data modify storage ww:temp setRoleStateInput.value set from storage ww:output playerState

$execute unless data storage ww:temp setRoleStateInput.value.$(path) run \
  data modify storage ww:temp setRoleStateInput.value.$(path) set value []
$data modify storage ww:temp setRoleStateInput.value.$(path) append value $(value)

function ww:player/_set_state with storage ww:temp setRoleStateInput