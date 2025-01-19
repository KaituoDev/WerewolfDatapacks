# context: @s = player | villager
# storage: ww:temp pairing, ww:temp arr

execute unless data storage ww:temp arr[0] run return 0

function ww:book/action/pairing/sanitize/_check_alive with storage ww:temp arr[0]
function ww:book/action/pairing/sanitize/_check_taken with storage ww:temp arr[0]

data remove storage ww:temp arr[0]
function ww:book/action/pairing/sanitize/loop