# context: @s = player

function ww:player/looking_at
execute unless data storage ww:output lookingAt run return fail
clear @s *[minecraft:custom_data~{lure:true}]

data modify storage ww:temp markInput set value {}
data modify storage ww:temp markInput.uuid set from storage ww:output lookingAt
execute if entity @s[tag=ww.fool] run data modify storage ww:temp markInput.uuid set from entity @s UUID
execute if data storage ww:output lookingAt run function ww:skill/lure/_mark with storage ww:temp markInput