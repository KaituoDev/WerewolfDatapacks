# context: @s = player
# location: at @s

execute unless entity @e[tag=ftb.entity,distance=..9] run return run function ftb:button/location_verified

tag @s add ftb.placement.denied

clear @s *[custom_data~{"ftb.button":true}]
title @s actionbar {"text":"附近有按鈕, 請遠離後再放置","color":"red","bold":true}