# context: @s = player | villager
# storage: ww:temp riggedVoteRecords, ww:temp arr

execute unless data storage ww:temp arr[0] run return 0

function ww:book/action/rigged_vote/sanitize/_check_alive with storage ww:temp arr[0]

data remove storage ww:temp arr[0]
function ww:book/action/rigged_vote/sanitize/loop