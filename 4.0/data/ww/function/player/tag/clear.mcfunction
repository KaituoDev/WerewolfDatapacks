# context: @s = player

# if is villager, modify data directly
execute if entity @s[type=villager] run return run data modify entity @s Tags set value []

execute store result score %length ww.var run data get entity @s Tags
execute if score %length ww.var matches 0 run return 0

data modify storage ww:temp removeTagInput set value {}
data modify storage ww:temp removeTagInput.tag set from entity @s Tags[-1]
function ww:player/tag/_remove with storage ww:temp removeTagInput

# loop
function ww:player/tag/clear