# context: @s = player | villager, selections meet requirements
# storage: ww:temp pairing, ww:temp pairingClone

# clone pairing to a temp array
# remove one object based on uuid from the current iteration player
# store the rest in the current iteration player's lover role state

execute unless data storage ww:temp pairingClone[0] run return 0

function ww:book/action/pairing/finalize/_set_lovers with storage ww:temp pairingClone[-1]

data remove storage ww:temp pairingClone[-1]
function ww:book/action/pairing/finalize/loop