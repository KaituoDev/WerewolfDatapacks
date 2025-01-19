# context: @s = villager with votes

function ww:player/name
data modify storage ww:temp setDisplayNameInput set value {}
data modify storage ww:temp setDisplayNameInput.name set from storage ww:output playerName
function ww:game/elimination/calculate/_display_name with storage ww:temp setDisplayNameInput