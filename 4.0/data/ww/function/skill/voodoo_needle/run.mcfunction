# context: @s = player

function ww:player/looking_at
data modify storage ww:temp applyInput set value {}
execute unless data storage ww:output lookingAt run return fail

clear @s *[minecraft:custom_data~{voodoo_needle: true}]

data modify storage ww:temp applyInput.uuid set from storage ww:output lookingAt
function ww:skill/voodoo_needle/_apply with storage ww:temp applyInput
