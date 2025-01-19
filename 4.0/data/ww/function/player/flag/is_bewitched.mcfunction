# context: @s = player
# output: 1 = true, 0 = false

function ww:player/role/get_state
execute unless data storage ww:output playerState.bewitched run return fail

return run data get storage ww:output playerState.bewitched