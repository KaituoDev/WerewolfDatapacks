# context: @s = player
# storage: ww:temp tipList
# scores: %tipIndex ww.var

execute unless data storage ww:temp tipList[0] run return 0

# A role should never carry more than five tips, keep the page to one screen.
execute if score %tipIndex ww.var matches 5.. run return 0

scoreboard players add %tipIndex ww.var 1

data modify storage ww:temp tipLineInput set value {}
data modify storage ww:temp tipLineInput.text set from storage ww:temp tipList[0]
# The number is written into the text while the book is built. A score component
# would be resolved again every time the book is opened, so every tip would show
# the last number instead of its own.
execute store result storage ww:temp tipLineInput.index int 1 run \
  scoreboard players get %tipIndex ww.var
function ww:book/build/intro/_tip_line with storage ww:temp tipLineInput

data remove storage ww:temp tipList[0]
function ww:book/build/intro/tips/loop
