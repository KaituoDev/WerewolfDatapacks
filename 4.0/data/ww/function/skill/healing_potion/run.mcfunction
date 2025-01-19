# context: @s = player

function ww:player/looking_at
execute unless data storage ww:output lookingAt run return 0
clear @s *[minecraft:custom_data~{healing_potion:true}]

data modify storage ww:temp applyHealingInput set value {}
execute if data storage ww:output lookingAt run data modify storage ww:temp applyHealingInput.uuid set from storage ww:output lookingAt
execute if data storage ww:output lookingAt run function ww:skill/healing_potion/_apply with storage ww:temp applyHealingInput