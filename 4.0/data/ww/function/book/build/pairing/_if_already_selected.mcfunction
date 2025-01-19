# context: @s = player | villager
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp pairing
# inputs: {uuid}

$return run execute if data storage ww:temp pairing[{uuid: $(uuid)}]