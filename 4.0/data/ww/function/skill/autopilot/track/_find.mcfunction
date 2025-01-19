# context: @s = some entity like wolf or zombified_piglin
# inputs: {owner: UUID}
# output: ww:output autopilotTarget

$execute as @n[nbt={UUID:$(owner)}] at @s run function ww:skill/autopilot/track/nearest_target

data remove storage ww:output autopilotTarget
execute at @s run data modify storage ww:output autopilotTarget set from entity @n[tag=candidate] UUID
tag @e[tag=candidate] remove candidate