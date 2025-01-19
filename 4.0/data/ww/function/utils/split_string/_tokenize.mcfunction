# inputs: str, delimiter, strLength, delimiterLength
# scores: %startPointer ww.var, %endPointer ww.var, %strLength ww.var
# output: storage ww:output splitString

data modify storage ww:temp substringInput set value {"str":"", "start":0, "end":0}
data modify storage ww:temp substringInput.str set from storage ww:temp tokenizeInput.str
execute store result storage ww:temp substringInput.start int 1 run scoreboard players get %startPointer ww.var
execute store result storage ww:temp substringInput.end int 1 run scoreboard players get %endPointer ww.var
function ww:utils/_substring with storage ww:temp substringInput

$data modify storage ww:temp compareStringInput set value {"str1":"", "str2":"$(delimiter)"}
data modify storage ww:temp compareStringInput.str1 set from storage ww:output substring
execute store result score %diff ww.var run function ww:utils/_compare_string with storage ww:temp compareStringInput

# this will set startPointer to 0 and endPointer to delimiterLength
execute if score %diff ww.var matches 0 run function ww:utils/split_string/append_token

execute unless score %diff ww.var matches 0 run scoreboard players add %startPointer ww.var 1
execute unless score %diff ww.var matches 0 run scoreboard players add %endPointer ww.var 1

execute if score %endPointer ww.var < %strLength ww.var run function ww:utils/split_string/_tokenize with storage ww:temp tokenizeInput