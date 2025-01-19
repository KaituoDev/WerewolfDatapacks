# context: @s = player

execute unless predicate ww:alive unless function ww:config/flag/dead_thief_steal run return fail

function ww:player/role/get_state
execute unless data storage ww:output playerState.stealTarget run return fail

data modify storage ww:temp swapInput set value {}
data modify storage ww:temp swapInput.uuid set from storage ww:output playerState.stealTarget
function ww:skill/steal/_swap with storage ww:temp swapInput

function ww:player/role/_remove_state {path: 'stealTarget'}
