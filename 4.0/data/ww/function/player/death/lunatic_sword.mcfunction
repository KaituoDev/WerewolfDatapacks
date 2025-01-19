# context: @s = victim player | villager

advancement revoke @s only ww:hit_by_lunatic_sword

scoreboard players reset @s ww.deaths

# remove any contextual tags like "this"
function ww:player/tag/sanitize

# broadcast
function ww:player/death/_message {message: \
  '[ \
    {"selector":"@n[tag=this]","color":"red","bold":true}, \
    {"text":" 被疯人杀死了","color":"white","bold":false} \
  ]' \
}

# death increment has been done in the previous function (skill/lunatic_sword/_apply)
execute on attacker run clear @s *[minecraft:custom_data~{lunatic_sword:true}]

function ww:player/on_death