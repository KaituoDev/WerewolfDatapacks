# context: @s = player
# output: 1 = true, 0 = false

function ww:player/_get_state {name: 'playerAlive'}
execute unless data storage ww:output playerState run return fail

return run data get storage ww:output playerState