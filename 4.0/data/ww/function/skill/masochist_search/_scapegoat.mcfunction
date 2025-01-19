# context: @s = player | villager
# inputs: {uuid}

$execute unless entity @n[nbt={UUID:$(uuid)},predicate=ww:alive] run return fail

data modify storage ww:temp scapegoatInput set value {}
data modify storage ww:temp scapegoatInput.source set from entity @s UUID
$execute as @n[nbt={UUID:$(uuid)}] run function ww:player/death/_scapegoat with storage ww:temp scapegoatInput

scoreboard players add @s ww.forceInvis 200
scoreboard players add @s ww.immune 200

return 1