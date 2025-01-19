execute as @e[type=area_effect_cloud,tag=button,sort=random,tag=!has_role,limit=1] run function ww:role/assign/buttons/get

execute if entity @e[type=marker,tag=role,scores={pool=1..}] if entity @e[type=area_effect_cloud,tag=button,tag=!has_role] run function ww:role/assign/buttons/main