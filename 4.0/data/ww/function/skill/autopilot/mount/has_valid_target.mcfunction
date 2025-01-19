# context: @s = wolf mount
# output: returns 1 if true, 0 if false

execute unless data entity @s AngryAt run return 0

data modify storage ww:temp validateInput set value {}
data modify storage ww:temp validateInput.uuid set from entity @s AngryAt

return run function ww:skill/autopilot/mount/_validate_target with storage ww:temp validateInput