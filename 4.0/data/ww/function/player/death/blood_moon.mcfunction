# context: @s = player | villager who used blood moon skill

scoreboard players reset @s ww.deaths

# remove any contextual tags like "this"
function ww:player/tag/sanitize

# broadcast
function ww:player/death/_message {message: \
  '[ \
    {"selector":"@n[tag=this]","color":"red","bold":true}, \
    {"text":" 施展完血月, 壯烈的消散了","color":"white","bold":false} \
  ]' \
}

function ww:player/on_death