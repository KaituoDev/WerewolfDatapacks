# context: @s = player
# inputs: {name}

$data modify storage ww:temp playerClearStateInput set value {name: $(name)}
data modify storage ww:temp playerClearStateInput.uuid set from entity @s UUID
function ww:player/state/_clear with storage ww:temp playerClearStateInput