# context: server
# storage: ww:memory GameBarCarousel
# inputs: {pointer, length, end, slide_length}

# carousel sliding window:
# 1. store length of original string
# 2. based on sliding window length, create a display string that keeps concat the
# original string until the total length >= original length + sliding window length
# 3. reset the pointer to 0, when pointer == length of original string, reset to 0

execute unless data storage ww:memory GameBarCarousel.original run return fail

data modify storage ww:temp setNameInput set value {}
$data modify storage ww:memory GameBarTexts.carousel set string storage ww:memory GameBarCarousel.buffer $(pointer) $(end)

# increment pointers
$scoreboard players set %pointer ww.var $(pointer)
scoreboard players add %pointer ww.var 1

$scoreboard players set %end ww.var $(end)
scoreboard players add %end ww.var 1

$execute if score %pointer ww.var matches $(length).. run scoreboard players set %end ww.var $(slide_length)
$execute if score %pointer ww.var matches $(length).. run scoreboard players set %pointer ww.var 0
execute store result storage ww:memory GameBarCarousel.pointer int 1 run scoreboard players get %pointer ww.var
execute store result storage ww:memory GameBarCarousel.end int 1 run scoreboard players get %end ww.var