# context: @s = player
# storage: ww:temp setupSignsInput
# inputs: {origin}

$data modify storage ww:temp setupSignsInput.facing set from entity @e[nbt={UUID:$(origin)},limit=1] data.facing