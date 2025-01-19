# context: @s = victim player | villager

scoreboard players reset @s ww.deaths

# remove any contextual tags like "this"
function ww:player/tag/sanitize

# broadcast
function ww:player/death/_message {message: \
  '[ \
    {"selector":"@n[tag=this]","color":"red","bold":true}, \
    {"text":" 被查驗到升天了","color":"white","bold":false} \
  ]' \
}

# kill counter is in book/action/prophecy/_get_role

function ww:player/on_death