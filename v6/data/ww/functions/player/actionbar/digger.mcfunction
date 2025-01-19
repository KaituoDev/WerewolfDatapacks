## Running as digger
## OUTPUT: storage ww:game actionbar.digger

tag @e[type=marker,tag=grave,distance=..4,sort=nearest,limit=1] add currentGrave
execute as @e[type=marker,tag=currentGrave,limit=1] run function ww:role/name/switcher
execute if entity @e[type=marker,tag=currentGrave] run data modify storage ww:game actionbar.digger set value '[{"text":"接近","color":"white","bold":false},{"storage":"ww:game","nbt":"role.name","interpret":true,"bold":true,"color":"red"},{"text":"墓地","color":"white","bold":false}]'

tag @e[type=marker,tag=currentGrave] remove currentGrave