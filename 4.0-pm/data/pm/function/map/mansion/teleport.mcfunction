# context: @s = player | villager

execute store result score %length ww.var run data get storage pm:memory MansionTeleportLocations
data modify storage pm:temp randInput set value {min: 0}
execute store result storage pm:temp randInput.max int 1 run scoreboard players remove %length ww.var 1

data modify storage pm:temp getLocationInput set value {}
execute store result storage pm:temp getLocationInput.index int 1 run \
  function ww:utils/_rand with storage pm:temp randInput

data modify storage pm:temp teleportInput set value {}
function pm:map/mansion/_get_location with storage pm:temp getLocationInput

function pm:map/mansion/_teleport with storage pm:temp teleportInput