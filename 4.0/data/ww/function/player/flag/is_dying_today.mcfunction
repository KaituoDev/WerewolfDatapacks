# context: @s = player
# output: 1 = true, 0 = false

function ww:player/role/get_state
execute unless data storage ww:output playerState.dyingDate.date run return fail

execute store result score %dyingDate ww.var run data get storage ww:output playerState.dyingDate.date
execute if score %dyingDate ww.var <= %days ww.system run return 1

return fail