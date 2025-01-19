tag @e[type=marker,tag=map,tag=!lobby,limit=1,sort=random] add selectedMap

execute if entity @e[type=marker,tag=selectedMap,tag=map1] run function ww:setting/map/1/choose
execute if entity @e[type=marker,tag=selectedMap,tag=map2] run function ww:setting/map/2/choose
execute if entity @e[type=marker,tag=selectedMap,tag=map3] run function ww:setting/map/3/choose
execute if entity @e[type=marker,tag=selectedMap,tag=map4] run function ww:setting/map/4/choose
execute if entity @e[type=marker,tag=selectedMap,tag=map5] run function ww:setting/map/5/choose
execute if entity @e[type=marker,tag=selectedMap,tag=map6] run function ww:setting/map/6/choose
execute if entity @e[type=marker,tag=selectedMap,tag=map7] run function ww:setting/map/7/choose
execute if entity @e[type=marker,tag=selectedMap,tag=map8] run function ww:setting/map/8/choose
execute if entity @e[type=marker,tag=selectedMap,tag=map9] run function ww:setting/map/9/choose
execute if entity @e[type=marker,tag=selectedMap,tag=map10] run function ww:setting/map/10/choose
execute if entity @e[type=marker,tag=selectedMap,tag=map11] run function ww:setting/map/11/choose

tag @e[tag=selectedMap] remove selectedMap