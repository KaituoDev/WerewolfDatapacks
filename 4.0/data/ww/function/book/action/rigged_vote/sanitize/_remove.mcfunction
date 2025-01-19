# context: @s = player | villager
# storage: ww:temp riggedVoteRecords, ww:temp arr
# inputs: {uuid}

$data remove storage ww:temp riggedVoteRecords[{uuid: $(uuid)}]