# context: @s = victim player | villager

advancement revoke @s only ww:hit_by_killer_weapon

scoreboard players reset @s ww.deaths

# remove any contextual tags like "this"
function ww:player/tag/sanitize
execute if function ww:player/flag/is_immune run return 0

# broadcast
function ww:player/death/_message {message: \
  '[ \
    {"selector":"@n[tag=this]","color":"red","bold":true}, \
    {"text":" 被狼人杀了","color":"white","bold":false} \
  ]' \
}

execute on attacker run function ww:player/increment_kill

function ww:player/on_death