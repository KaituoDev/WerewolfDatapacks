# context: @s = villager

scoreboard players set @s ww.ai.elimination_used 1
# execute if score %days ww.system matches ..1 run return fail

data modify storage ww:temp saveInput set value {}

# if AI has target, use it
function ww:player/role/get_state
data modify storage ww:temp saveInput.uuid set from storage ww:output playerState.eliminationTarget
execute if data storage ww:temp saveInput.uuid run return run \
 function ww:game/elimination/variation/_save with storage ww:temp saveInput

tag @e[tag=candidate] remove candidate

# select candidates based on current campaign
execute if entity @s[tag=bads] run function ww:ai/behavior/elimination/bads
execute unless entity @s[tag=bads] run function ww:ai/behavior/elimination/else

# filter out lovers
execute if entity @s[tag=ww.lover] run function ww:skill/autopilot/track/filter_lovers
tag @s remove candidate

data modify storage ww:temp saveInput.uuid set from entity @n[sort=random,tag=candidate] UUID
function ww:game/elimination/variation/_save with storage ww:temp saveInput

tag @e[tag=candidate] remove candidate