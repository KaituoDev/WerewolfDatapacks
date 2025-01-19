# context: @s = player
# output: 1 = true, 0 = false

function ww:player/_get_state {name: 'playerRole'}
execute unless data storage ww:output playerState.id run return fail

return 1