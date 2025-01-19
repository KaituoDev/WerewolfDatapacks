# context: @s = player | villager
# output: entities @e[tag=candidate]

data modify storage ww:temp trackTargetFixedInput set value {}
execute store result storage ww:temp trackTargetFixedInput.score int 1 run \
 scoreboard players get @s ww.autopilotTarget
return run function ww:skill/autopilot/track/target/_fixed with storage ww:temp trackTargetFixedInput