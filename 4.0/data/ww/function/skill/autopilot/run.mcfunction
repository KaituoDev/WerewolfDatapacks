# context: @s = player | villager

# 1. set scale
# 2. summon wolf
# 3. ride on wolf
# 4. have wolf be constantly target the nearest non invis, non bads players

attribute @s scale base set 0.1
ride @s dismount

clear @s *[custom_data~{autopilot:true}]
function ww:chat/_dm {type: 'info', message: '按蹲下即可下車'}

tag @s add this
execute summon wolf run function ww:skill/autopilot/mount/setup
tag @s remove this