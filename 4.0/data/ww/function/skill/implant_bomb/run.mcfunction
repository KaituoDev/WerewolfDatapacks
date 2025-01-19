# context: @s = player | villager

function ww:player/looking_at
execute unless data storage ww:output lookingAt run return 0

clear @s *[minecraft:custom_data~{implant_bomb:true}]

data modify storage ww:temp implantInput set value {}
data modify storage ww:temp implantInput.uuid set from storage ww:output lookingAt
function ww:skill/implant_bomb/_implant with storage ww:temp implantInput