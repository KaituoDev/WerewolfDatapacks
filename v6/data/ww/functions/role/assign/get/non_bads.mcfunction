tag @s add this
execute as @e[type=marker,tag=role,tag=!bads,limit=1,sort=random] run function ww:role/assign/get/switcher
tag @s remove this