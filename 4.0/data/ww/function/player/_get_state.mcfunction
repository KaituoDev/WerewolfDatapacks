# context: @s = player
# inputs: {name}
# output: ww:output playerState
# returns: 1 = state exists, 0 = state empty

$data modify storage ww:temp playerGetStateInput set value {name: $(name)}
data modify storage ww:temp playerGetStateInput.uuid set from entity @s UUID
return run function ww:player/state/_get with storage ww:temp playerGetStateInput