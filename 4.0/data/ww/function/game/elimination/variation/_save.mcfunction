# context: @s = player | villager
# inputs: {uuid}

# validate alive
$execute unless entity @n[nbt={UUID:$(uuid)},predicate=ww:alive] run return fail

scoreboard players set %ai_can_vote ww.system 1

# check for duplicates
data remove storage ww:temp compareStringInput
scoreboard players set %success ww.var -1

$data modify storage ww:temp compareStringInput set value {str1: $(uuid)}
function ww:player/_get_state {name: "playerElimination"}
execute if data storage ww:output playerState run data modify storage ww:temp compareStringInput.str2 set from storage ww:output playerState
execute if data storage ww:output playerState store result score %success ww.var run function ww:utils/_compare_string with storage ww:temp compareStringInput
execute if score %success ww.var matches 0 run return run function ww:game/elimination/_info {event: 'duplicate', uuid: ''}

# save
$function ww:player/_set_state {name: 'playerElimination', value: $(uuid)}

# info
$data modify storage ww:temp eliminationInfoInput set value {event:'selected', uuid: $(uuid)}
function ww:game/elimination/_info with storage ww:temp eliminationInfoInput
data remove storage ww:temp eliminationInfoInput