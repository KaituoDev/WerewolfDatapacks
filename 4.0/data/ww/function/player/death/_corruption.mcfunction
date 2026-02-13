# context: @s = victim player | villager
# inputs: {source: UUID}

scoreboard players reset @s ww.deaths

# remove any contextual tags like "this"
function ww:player/tag/sanitize

# broadcast
function ww:player/death/_message {message: \
  '[ \
    {"selector":"@n[tag=this]","color":"red","bold":true}, \
    {"text":" 堕落于亡灵之间","color":"white","bold":false} \
  ]' \
}

$execute as @n[nbt={UUID:$(source)}] run function ww:player/increment_kill

function ww:player/on_death