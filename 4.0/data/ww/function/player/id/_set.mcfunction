# context: @s = player | villager
# inputs: {uuid, score}

$data modify storage ww:memory playerData.id.'$(score)' set value $(uuid)