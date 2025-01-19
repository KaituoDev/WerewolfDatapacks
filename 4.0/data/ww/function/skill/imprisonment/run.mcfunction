# context: @s = player

execute if score %remainingTime ww.system matches ..400 run return run function ww:chat/_dm {type: 'warn', message: '剩餘時間不允許發動'}

function ww:player/looking_at
execute unless data storage ww:output lookingAt run return fail
clear @s *[minecraft:custom_data~{imprisonment:true}]

data modify storage ww:temp markInput set value {}
data modify storage ww:temp markInput.uuid set from storage ww:output lookingAt
execute if entity @s[tag=ww.fool] run data modify storage ww:temp markInput.uuid set from entity @s UUID
execute if data storage ww:output lookingAt run function ww:skill/imprisonment/_mark with storage ww:temp markInput