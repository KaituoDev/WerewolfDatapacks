# context: @s = player | villager
# inputs: {source: UUID}

scoreboard players reset @s ww.deaths

# remove any contextual tags like "this"
function ww:player/tag/sanitize

# broadcast
$function ww:player/death/_message {message: \
  '[ \
    {"selector":"@n[tag=this]","color":"red","bold":true}, \
    {"text":" 代替 ","color":"white","bold":false}, \
    {"selector":"@n[nbt={UUID:$(source)}]","color":"yellow","bold":true}, \
    {"text":" 而死","color":"white","bold":false} \
  ]' \
}

function ww:player/on_death