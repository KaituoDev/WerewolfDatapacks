# context: @s = player | villager
# inputs: {uuid, name}

$data modify storage ww:memory playerData.name.'$(uuid)' set value '$(name)'