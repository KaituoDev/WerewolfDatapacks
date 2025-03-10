# context: @s = player
# inputs: {campaign: bads | goods | spirits}
# storage: ww:temp clonedRoles

execute unless data storage ww:temp clonedRoles[0] run return fail

$data modify storage ww:temp compareStringInput set value {str1: '$(campaign)'}
data modify storage ww:temp compareStringInput.str2 set from storage ww:temp clonedRoles[-1].campaign.id

# see if campaign id matches
scoreboard players reset %result ww.var
execute store result score %result ww.var run \
 function ww:utils/_compare_string with storage ww:temp compareStringInput

# If return value is 0, run function ww:config/board/action/pool/_set {id: item.id, count: 0}
data modify storage ww:temp resetCountInput set value {count: 0}
data modify storage ww:temp resetCountInput.id set from storage ww:temp clonedRoles[-1].id

execute if score %result ww.var matches 0 run \
 function ww:config/board/action/pool/_set with storage ww:temp resetCountInput

data remove storage ww:temp clonedRoles[-1]

# loop
$function ww:config/board/action/pool/reset/_loop {campaign: $(campaign)}