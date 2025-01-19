# context: @s = dead player | villager

function ww:player/role/get_state
execute unless data storage ww:output playerState.rifleTarget run return 0

data modify storage ww:temp rifleDeathInput set value {}
data modify storage ww:temp rifleDeathInput.uuid set from storage ww:output playerState.rifleTarget
function ww:skill/rifle/_death with storage ww:temp rifleDeathInput