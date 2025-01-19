# context: @s = player

function ww:player/looking_at_non_stop

data modify storage ww:temp saveInput set value {}
data modify storage ww:temp saveInput.uuid set from storage ww:output lookingAt

# bomb timer
data modify storage ww:temp passBombInput set value {}
data modify storage ww:temp passBombInput.source set from entity @s UUID
data modify storage ww:temp passBombInput.victim set from storage ww:output lookingAt
execute if score @s ww.bomb matches 1.. run function ww:skill/implant_bomb/_pass with storage ww:temp passBombInput

# 2. store selected player
execute if data storage ww:output lookingAt run \
  function ww:game/elimination/variation/_save with storage ww:temp saveInput