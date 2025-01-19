# context: server

# execute as @e[tag=ww.mount,type=wolf] \
#  unless function ww:skill/autopilot/mount/has_valid_target run \
#  function ww:skill/autopilot/track/sanitize

execute as @e[tag=ww.mount,type=wolf] unless data entity @s AngryAt run \
  function ww:skill/autopilot/track

# execute if data storage ww:queue autopilotTasks[0] run return fail

# execute as @e[tag=ww.mount,type=wolf] \
#  unless function ww:skill/autopilot/mount/has_valid_target run \
#  function ww:skill/autopilot/track/sanitize

# # queue a new batch
# execute as @e[tag=ww.mount,type=wolf] unless data entity @s AngryAt run \
#   function ww:queue/_add_autopilot {task: 'skill/autopilot/track'}