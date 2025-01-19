# context: @s = player
# inputs: {uuid, name}
# output: ww:output playerState

data remove storage ww:output playerState
$return run data modify storage ww:output playerState set from storage ww:memory '$(name)'.'$(uuid)'