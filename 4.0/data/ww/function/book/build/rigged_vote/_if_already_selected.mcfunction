# context: @s = player | villager
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp riggedVoteRecords
# inputs: {uuid}

$return run execute if data storage ww:temp riggedVoteRecords[{uuid: $(uuid)}]