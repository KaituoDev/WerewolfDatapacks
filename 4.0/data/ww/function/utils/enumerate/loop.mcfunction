# reference: ww:utils/_enumerate
# data: ww:temp enumerateInput

# modify last object in the array
data modify storage ww:temp enumerateObj set from storage ww:temp enumerateInput[-1]
execute store result storage ww:temp enumerateObj.index int 1 run scoreboard players remove %currentIndex ww.var 1

# prepend to output
data modify storage ww:output enumerate prepend from storage ww:temp enumerateObj

# remove the last object from input
data remove storage ww:temp enumerateInput[-1]

# loop
execute store result score %length ww.var run data get storage ww:temp enumerateInput
execute if score %length ww.var matches 1.. run function ww:utils/enumerate/loop