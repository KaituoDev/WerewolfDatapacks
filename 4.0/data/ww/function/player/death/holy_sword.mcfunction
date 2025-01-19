# context: @s = victim player | villager

advancement revoke @s only ww:hit_by_holy_sword

scoreboard players reset @s ww.deaths

# remove any contextual tags like "this"
function ww:player/tag/sanitize

# broadcast
function ww:player/death/_message {message: \
  '[ \
    {"selector":"@n[tag=this]","color":"red","bold":true}, \
    {"text":" 被圣剑制裁了","color":"gold","bold":false} \
  ]' \
}

execute on attacker run function ww:player/increment_kill
execute on attacker run clear @s *[minecraft:custom_data~{holy_sword:true}]

function ww:player/on_death