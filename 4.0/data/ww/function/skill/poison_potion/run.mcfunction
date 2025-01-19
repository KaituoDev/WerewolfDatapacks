# context: @s = player

function ww:player/looking_at
execute unless data storage ww:output lookingAt run return 0
clear @s *[minecraft:custom_data~{poison_potion:true}]

scoreboard players add @s ww.poisonCD 2

data modify storage ww:temp applyPoisonInput set value {}
execute if data storage ww:output lookingAt run data modify storage ww:temp applyPoisonInput.uuid set from storage ww:output lookingAt
execute if data storage ww:output lookingAt run function ww:skill/poison_potion/_apply with storage ww:temp applyPoisonInput