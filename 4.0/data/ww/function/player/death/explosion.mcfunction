# context: @s = victim player | villager

scoreboard players reset @s ww.deaths

# remove any contextual tags like "this"
function ww:player/tag/sanitize

# broadcast
function ww:player/death/_message {message: \
  '[ \
    {"selector":"@n[tag=this]","color":"red","bold":true}, \
    {"text":" 被炸死了","color":"white","bold":false} \
  ]' \
}

# kill counter for implant bomb skill
function ww:player/role/get_state
data modify storage ww:temp incrementInput set value {}
data modify storage ww:temp incrementInput.uuid set from storage ww:output playerState.implantBombSource
execute if data storage ww:temp incrementInput.uuid run \
 function ww:player/_increment_kill_uuid with storage ww:temp incrementInput

# kill counter for explosion skill is in skill/explosion/_apply

function ww:player/on_death