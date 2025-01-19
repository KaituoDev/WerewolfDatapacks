# context: @s = player | villager | other entity

execute if score @s ww.za_warudo matches ..0 run return run function ww:skill/za_warudo/end

# teleport to marker
function ww:player/_get_state {name: 'playerZaWarudoOrigin'}
data modify storage ww:temp teleportInput set value {}
data modify storage ww:temp teleportInput.marker set from storage ww:output playerState
function ww:skill/za_warudo/_teleport with storage ww:temp teleportInput
