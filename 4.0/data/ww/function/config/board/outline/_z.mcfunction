# context: @s = player
# location: at @s
# inputs: {direction}

execute if entity @e[type=block_display,distance=..0.5] run return 0

# remove previous block display from the same player
function ww:player/_get_state {name: 'playerConfigBoard'}
function ww:config/board/outline/_delete with storage ww:output playerState

tag @s add this
$execute summon block_display run function ww:config/board/outline/_setup {scale: [5f,4f,1f], direction: $(direction)}
tag @s remove this

return 1