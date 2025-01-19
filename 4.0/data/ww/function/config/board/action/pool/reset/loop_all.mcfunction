# context: @s = player
# storage: ww:temp clonedRoles

execute unless data storage ww:temp clonedRoles[0] run return fail

# If return value is 0, run function ww:config/board/action/pool/_set {id: item.id, count: 0}
data modify storage ww:temp resetCountInput set value {count: 0}
data modify storage ww:temp resetCountInput.id set from storage ww:temp clonedRoles[-1].id

function ww:config/board/action/pool/_set with storage ww:temp resetCountInput

data remove storage ww:temp clonedRoles[-1]

# loop
function ww:config/board/action/pool/reset/loop_all