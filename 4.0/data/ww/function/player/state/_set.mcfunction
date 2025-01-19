# context: @s = player
# inputs: {uuid, name, value}
# outputs: ww:output playerState

$data modify storage ww:memory '$(name)'.'$(uuid)' set value $(value)
data remove storage ww:output playerState
$return run data modify storage ww:output playerState set value $(value)