# context: server

execute if data storage ww:queue killlerAITasks[0] run return fail

# queue a new batch
# execute as @e[tag=ww.killer_ai,type=zombified_piglin] \
#  unless function ww:skill/autopilot/mount/has_valid_target run \
#  function ww:queue/_add_killer_ai {task: 'skill/autopilot/track/sanitize'}

execute as @e[tag=ww.killer_ai,type=zombified_piglin] unless data entity @s AngryAt run \
  function ww:queue/_add_killer_ai {task: 'ai/behavior/autopilot/main'}