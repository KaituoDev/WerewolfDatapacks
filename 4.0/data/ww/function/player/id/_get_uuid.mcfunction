# context: @s = player | villager
# inputs: {score}
# output: ww:output playerUUID

$execute unless data storage ww:memory playerData.id.'$(score)' run return fail

$data modify storage ww:output playerUUID set from storage ww:memory playerData.id.'$(score)'

return 1