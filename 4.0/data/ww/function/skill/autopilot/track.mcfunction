# context: @s = wolf mount

# validate passenger
execute unless predicate ww:is_carrying_player run return run function ww:game/graceful_clean/setup

function ww:skill/autopilot/track/find

# set the AngryAt regardless, mobs have their own mechanism for clearing
# AngryAt
data modify entity @s AngryAt set from storage ww:output autopilotTarget
execute if data storage ww:output autopilotTarget run \
  attribute @s follow_range base set 1000

execute unless data storage ww:output autopilotTarget run \
  attribute @s follow_range base set 0