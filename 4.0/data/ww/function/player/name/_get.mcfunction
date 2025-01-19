# context: @s = player | villager
# inputs: {uuid}
# output: ww:output playerName
# note: this only works for online players, unless it already exists in cache

data remove storage ww:output playerName

# read from cache
$execute if data storage ww:memory playerData.name.'$(uuid)' run \
  data modify storage ww:output playerName set from storage ww:memory playerData.name.'$(uuid)'

execute if data storage ww:output playerName run return 1

# check if is not a player entity
$execute unless entity @s[type=player] run return run function ww:player/name/_extract_from_entity {uuid: $(uuid)}

# generate via text display
# $summon text_display ~ ~ ~ {text:'{"selector":"@n[nbt={UUID:$(uuid)}]"}',Tags:[this_text_display]}
# data modify storage ww:temp extractInput set value {"nbtString":""}
# data modify storage ww:temp extractInput.nbtString set from entity @n[tag=this_text_display] text
# function ww:player/name/_extract with storage ww:temp extractInput
# data modify storage ww:output playerName set from storage ww:temp textDisplayNBT.text

setblock ~ 200 ~ barrel
$execute as @p[nbt={UUID:$(uuid)}] run loot insert ~ 200 ~ loot ww:head
data modify storage ww:output playerName set from block ~ 200 ~ Items[0].components."minecraft:profile".name
setblock ~ 200 ~ air

# cache it
$data modify storage ww:temp setNameInput set value {uuid: $(uuid)}
data modify storage ww:temp setNameInput.name set from storage ww:output playerName
function ww:player/name/_set with storage ww:temp setNameInput

# kill @e[tag=this_text_display]