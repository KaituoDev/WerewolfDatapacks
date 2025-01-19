# context: @s = victim player | villager

advancement revoke @s only ww:hit_by_ai_autopilot

scoreboard players reset @s ww.deaths

# remove any contextual tags like "this"
function ww:player/tag/sanitize
execute if function ww:player/flag/is_immune run return 0

# broadcast
function ww:player/death/_message {message: \
  '[ \
    {"selector":"@n[tag=this]","color":"red","bold":true}, \
    {"text":" 被狼人AI咬死了","color":"white","bold":false} \
  ]' \
}

# find owner and grant 1 kill
execute on attacker run function ww:player/_get_state {name: 'mountOwner'}
execute on attacker run data remove entity @s AngryAt
execute on attacker run attribute @s follow_range base set 0
data modify storage ww:temp incrementKillInput set value {}
data modify storage ww:temp incrementKillInput.uuid set from storage ww:output playerState
execute if data storage ww:temp incrementKillInput.uuid run function ww:player/_increment_kill_uuid with storage ww:temp incrementKillInput

function ww:player/on_death