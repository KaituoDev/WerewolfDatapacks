# context: @s = player | villager

scoreboard players reset @s ww.deaths

# remove any contextual tags like "this"
function ww:player/tag/sanitize

# broadcast
function ww:player/death/_message {message: \
  '[ \
    {"selector":"@n[tag=this]","color":"red","bold":true}, \
    {"text":" 被毒死了","color":"white","bold":false} \
  ]' \
}

function ww:player/role/get_state
data modify storage ww:temp incrementKillInput set value {}
data modify storage ww:temp incrementKillInput.uuid set from storage ww:output playerState.dyingDate.source
execute if data storage ww:temp incrementKillInput.uuid run function ww:player/_increment_kill_uuid with storage ww:temp incrementKillInput

function ww:player/on_death