# context: @s = player

function ww:player/looking_at
data modify storage ww:temp markInput set value {}
execute if data storage ww:output lookingAt run data modify storage ww:temp markInput.uuid set from storage ww:output lookingAt
execute if data storage ww:output lookingAt run function ww:skill/steal/_mark with storage ww:temp markInput