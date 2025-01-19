# context: @s = villager

data modify entity @s NoAI set value 1b
data merge entity @s {CustomNameVisible: 0b, Silent: 1b}

function ww:game/map/_self_tp with storage ww:memory config.LOBBY
execute at @s as @a[gamemode=spectator,distance=..1] run spectate @n[predicate=ww:alive,distance=1..]

# tp to map starting point
# function ww:game/map/tp_map_start
# execute at @s run tp ~ ~3 ~

# remove the killer ai associated
function ww:player/_get_state {name: 'playerMount'}
data modify storage ww:temp removeAutopilotInput set value {}
data modify storage ww:temp removeAutopilotInput.uuid set from storage ww:output playerState
execute if data storage ww:temp removeAutopilotInput.uuid run \
  function ww:ai/_remove_autopilot with storage ww:temp removeAutopilotInput