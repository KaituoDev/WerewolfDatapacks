# context: @s = player

# if no mount exists, sanitize the tag (ww.mounted)
function ww:player/_get_state {name: 'playerMount'}
execute unless data storage ww:output playerState run function ww:player/tag/sanitize
execute unless data storage ww:output playerState run return fail

# # check if is still riding
# execute on vehicle on passengers run return fail

# 1. set scale back to 1
attribute @s scale base set 1

# 3. remove mount
ride @s dismount
data modify storage ww:temp removeMountInput set value {}
data modify storage ww:temp removeMountInput.uuid set from storage ww:output playerState
function ww:skill/autopilot/mount/_remove with storage ww:temp removeMountInput

# 4. clear state
function ww:player/_clear_state {name: 'playerMount'}

# sanitize tags
function ww:player/tag/sanitize

return 1