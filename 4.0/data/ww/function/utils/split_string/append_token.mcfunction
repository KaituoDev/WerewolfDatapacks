# storages: ww:temp tokenizeInput.str, ww:output splitString
# scores: %startPointer ww.var, %endPointer ww.var

# get the token before the delimiter
data modify storage ww:temp substringInput set value {"str":"", "start":0, "end":0}
data modify storage ww:temp substringInput.str set from storage ww:temp tokenizeInput.str
execute store result storage ww:temp substringInput.end int 1 run scoreboard players get %startPointer ww.var
function ww:utils/_substring with storage ww:temp substringInput

# append the token
data modify storage ww:output splitString append from storage ww:output substring

# modify the original string
data modify storage ww:temp substringInput set value {"str":"", "start":0, "end":0}
data modify storage ww:temp substringInput.str set from storage ww:temp tokenizeInput.str
execute store result storage ww:temp substringInput.start int 1 run scoreboard players get %endPointer ww.var
# use the length of str
execute store result storage ww:temp substringInput.end int 1 run data get storage ww:temp tokenizeInput.str
function ww:utils/_substring with storage ww:temp substringInput
data modify storage ww:temp tokenizeInput.str set from storage ww:output substring

# reset start and end pointers
scoreboard players set %startPointer ww.var 0
scoreboard players operation %endPointer ww.var = %delimiterLength ww.var