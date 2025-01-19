# context: @s = dead player | villager
# storage: ww:temp loopInput.players ({uuid, player: name})

execute unless data storage ww:temp loopInput.players[0] run return 0

function ww:skill/pairing_book/chain/_death with storage ww:temp loopInput.players[0]

data remove storage ww:temp loopInput.players[0]
function ww:skill/pairing_book/chain/loop
