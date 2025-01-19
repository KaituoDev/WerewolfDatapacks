# context: @s = player
# output: ww:output bossbarId

data modify storage ww:temp joinStringInput set value {}
data modify storage ww:temp joinStringInput.strings set from entity @s UUID
data modify storage ww:temp joinStringInput.delimiter set value ""
function ww:utils/_join_string with storage ww:temp joinStringInput
data modify storage ww:output bossbarId set from storage ww:output joinString