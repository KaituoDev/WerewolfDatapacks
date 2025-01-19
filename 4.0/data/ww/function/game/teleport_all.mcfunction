# context: server

# checks if there are any maps modified already
execute unless function ww:game/map/select run return run \ 
  execute as @a run function ww:chat/_dm {type:'error', message:'请至少设定一张地图的位置'}

# fail safe
execute if score %map ww.system matches ..-1 run scoreboard players set %map ww.system 0

# teleports players to selected map
data modify storage ww:temp getMapObjectInput set value {}
execute store result storage ww:temp getMapObjectInput.index int 1 run scoreboard players get %map ww.system
function ww:game/map/_get_obj with storage ww:temp getMapObjectInput
function ww:game/map/_teleport with storage ww:output mapObj