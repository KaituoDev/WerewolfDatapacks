# context: @s = non player entity
# inputs: {uuid}

# custom name is formatted in: '"XXX"'
$data modify storage ww:output playerName set string entity @n[nbt={UUID:$(uuid)}] CustomName 1 -1

# cache it
$data modify storage ww:temp setNameInput set value {uuid: $(uuid)}
data modify storage ww:temp setNameInput.name set from storage ww:output playerName
function ww:player/name/_set with storage ww:temp setNameInput