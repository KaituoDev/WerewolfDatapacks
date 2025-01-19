# context: @s = player | villager

function ww:player/role/get_state
execute unless data storage ww:output playerState.scapegoat run return 0
data modify storage ww:temp scapegoatInput set value {}
data modify storage ww:temp scapegoatInput.uuid set from storage ww:output playerState.scapegoat

# this could fail due to scapegoat already dead
return run function ww:skill/masochist_search/_scapegoat with storage ww:temp scapegoatInput