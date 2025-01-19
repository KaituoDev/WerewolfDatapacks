# context: @s = player

function ww:player/role/get_state

execute unless data storage ww:output playerState.voodooCurse.stacks run return 0
return run data get storage ww:output playerState.voodooCurse.stacks