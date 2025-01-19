# context: @s = player

# 1. change gamemode
gamemode adventure @s

# 2. remove tags
tag @s remove ww.morphed
scoreboard players reset @s ww.morphing

# 3. remove morph entity
function ww:player/_get_state {name: 'playerMorph'}
execute if data storage ww:output playerState.uuid run \
  function ww:skill/ninjutsu_activate/effects/morph/_remove with storage ww:output playerState