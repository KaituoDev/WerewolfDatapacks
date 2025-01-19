# context: @s = player
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp sanitization

execute store result score %length ww.var run data get storage ww:temp sanitization.raw
execute if score %length ww.var matches 0 run return 0

execute store result score %rawLength ww.var run data get storage ww:temp sanitization.raw[0]
execute if score %rawLength ww.var matches 1.. run \
  data modify storage ww:temp sanitization.result append from storage ww:temp sanitization.raw[0]

data remove storage ww:temp sanitization.raw[0]

function ww:book/build/utils/sanitize_enumerated/loop