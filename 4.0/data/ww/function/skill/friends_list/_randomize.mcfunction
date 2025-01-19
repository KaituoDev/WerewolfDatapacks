# context: @s = player
# inputs: {count}

function ww:player/role/get_state
execute if data storage ww:output playerState.foolFriendsList run return 0
data modify storage ww:temp setStateInput set value {path: 'foolFriendsList', value: []}

tag @s add this
$execute as @e[predicate=ww:player,tag=!this,limit=$(count),sort=random] run \
  function ww:skill/friends_list/record
tag @s remove this

function ww:player/role/_set_state with storage ww:temp setStateInput