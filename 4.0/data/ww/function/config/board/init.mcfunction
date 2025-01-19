# context: @s = player

# remove signs
function ww:player/_get_state {name: 'playerConfigBoard'}
execute if data storage ww:output playerState run function ww:config/board/sign/_delete with storage ww:output playerState

# creates the block display and origin marker (also removes existing ones)
execute at @s run function ww:config/board/outline

# place the signs when sneaking
# if block display has east tag, wall sign should face west
# set the marker's data to have the wall sign facing direction
data modify storage ww:temp setupSignsInput set from storage ww:output playerState

# another subfunction to set facing
function ww:config/board/sign/_set_facing_from_origin with storage ww:output playerState

execute if predicate ww:sneaking run return run function ww:config/board/sign/init with storage ww:temp setupSignsInput

# not sneaking
tellraw @s [\
  {"text":"蹲下","color":"gold","bold":true}, \
  {"text":"+","color":"white","bold":false}, \
  {"text":"右鍵","color":"gold","bold":true}, \
  {"text":" 來設置完整面板","color":"white","bold":false} \
]