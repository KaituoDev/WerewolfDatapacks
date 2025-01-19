# context: @s = player

scoreboard players remove @s ww.morphing 1

function ww:player/_get_state {name: 'playerMorph'}
execute if score @s ww.morphing matches ..0 run return run \
  function ww:skill/ninjutsu_activate/effects/morph/end

execute if data storage ww:output playerState.uuid run \ 
  function ww:skill/ninjutsu_activate/effects/morph/_spectate with storage ww:output playerState