# context: @s = victim player | villager

scoreboard players reset @s ww.deaths

# remove any contextual tags like "this"
function ww:player/tag/sanitize

# broadcast
function ww:player/death/_message {message: \
  '[ \
    {"selector":"@n[tag=this]","color":"red","bold":true}, \
    {"text":" 受蠱毒而死","color":"white","bold":false} \
  ]' \
}

# kill counter is in skill/guard/handle_bewitched

function ww:player/on_death