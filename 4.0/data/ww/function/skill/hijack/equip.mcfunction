# context: @s = player

function ww:player/role/get_state
execute unless data storage ww:output playerState.hijackedHead run function ww:skill/hijack/default

function ww:player/role/get_state
data modify storage ww:temp equipInput set value {}
data modify storage ww:temp equipInput.uuid set from storage ww:output playerState.hijackedHead
function ww:skill/hijack/_equip with storage ww:temp equipInput