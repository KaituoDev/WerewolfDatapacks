# context: @s = player | villager
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp pairing
# inputs: {uuid}

$execute as @n[nbt={UUID:$(uuid)}] run return run execute unless function ww:player/flag/is_alive