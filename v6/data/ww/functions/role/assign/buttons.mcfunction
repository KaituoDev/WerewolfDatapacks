function ww:role/assign/init

function ww:role/assign/buttons/main

kill @e[type=marker,tag=role]

execute as @e[type=area_effect_cloud,tag=button,tag=has_role] run function ww:role/assign/buttons/name