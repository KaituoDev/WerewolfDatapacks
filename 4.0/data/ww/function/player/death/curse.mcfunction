# context: @s = victim player | villager

scoreboard players reset @s ww.deaths

# remove any contextual tags like "this"
function ww:player/tag/sanitize

# broadcast, the this tag is applied inside this function
function ww:player/death/_message {message: \
  '[ \
    {"selector":"@n[tag=this]","color":"red","bold":true}, \
    {"text":" 受詛咒身亡","color":"white","bold":false} \
  ]' \
}

# find owner and grant 1 kill
function ww:player/role/get_state
data modify storage ww:temp incrementKillInput set value {}
data modify storage ww:temp incrementKillInput.uuid set from storage ww:output playerState.voodooCurse.source
execute if data storage ww:temp incrementKillInput.uuid run function ww:player/_increment_kill_uuid with storage ww:temp incrementKillInput

function ww:player/on_death