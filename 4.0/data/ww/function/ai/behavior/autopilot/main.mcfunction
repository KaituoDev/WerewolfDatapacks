# context: @s = zombified piglin

# # validate if already targeting valid entity
# execute unless function ww:skill/autopilot/mount/has_valid_target run return run \
#  function ww:skill/autopilot/track/sanitize

# auto target the nearest non invis non bads alive player
function ww:skill/autopilot/track/find
data modify entity @s AngryAt set from storage ww:output autopilotTarget

execute if data storage ww:output autopilotTarget run \
  attribute @s follow_range base set 1000

#execute on target unless entity @s[predicate=ww:is_invisible] on attacker run \

execute unless data storage ww:output autopilotTarget run \
  attribute @s follow_range base set 0
