# context: @s = player | villager
# output: ww:output playerName

data modify storage ww:temp getPlayerNameInput set value {"uuid":""}
data modify storage ww:temp getPlayerNameInput.uuid set from entity @s UUID
function ww:player/name/_get with storage ww:temp getPlayerNameInput