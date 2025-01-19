# context: @s = player
# inputs: {name, value}

$data modify storage ww:temp playerSetStateInput set value {name: $(name), value: $(value)}
data modify storage ww:temp playerSetStateInput.uuid set from entity @s UUID
return run function ww:player/state/_set with storage ww:temp playerSetStateInput