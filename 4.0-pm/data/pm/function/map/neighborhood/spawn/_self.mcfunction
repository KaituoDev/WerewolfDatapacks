# context: @s = player

data modify storage pm:temp randInput set value {min: 0}
execute store result storage pm:temp randInput.max int 1 run scoreboard players get %length ww.var

data modify storage pm:temp getLocationInput set value {}
execute store result storage pm:temp getLocationInput.index int 1 run \
  function ww:utils/_rand with storage pm:temp randInput

data modify storage pm:temp teleportInput set value {}
function pm:map/neighborhood/spawn/_get_location with storage pm:temp getLocationInput
function pm:map/neighborhood/spawn/_teleport with storage pm:temp teleportInput
