# context: @s = player | villager
# storage: ww:temp setStateInput

data modify storage ww:temp recordObj set value {}
data modify storage ww:temp recordObj.uuid set from entity @s UUID
function ww:player/name
data modify storage ww:temp recordObj.player set from storage ww:output playerName

data modify storage ww:temp setStateInput.value append from storage ww:temp recordObj