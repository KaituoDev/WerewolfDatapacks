# context: @s = player
# inputs: {index, name}

$data modify storage ww:memory config.MAPS[$(index)].name set value '$(name)'
$function ww:chat/_dm {type: 'info', message: '已将地图名改为: $(name)'}

# update signs if applicable
function ww:player/_get_state {name: 'playerConfigBoard'}
execute unless data storage ww:output playerState.origin run return 0
data modify storage ww:temp updateSignsInput set value {}
data modify storage ww:temp updateSignsInput.origin set from storage ww:output playerState.origin

function ww:config/board/page/_map with storage ww:temp updateSignsInput

return 1