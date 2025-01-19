# context: @s = player
# storage: ww:temp joinStringInput.list, ww:temp joinStringInput.strings

execute unless data storage ww:temp joinStringInput.list[0] run return 0

data modify storage ww:temp getPlayerNameInput set value {}
data modify storage ww:temp getPlayerNameInput.uuid set from storage ww:temp joinStringInput.list[0]
function ww:player/name/_get with storage ww:temp getPlayerNameInput

data modify storage ww:temp joinStringInput.strings append from storage ww:output playerName

data remove storage ww:temp joinStringInput.list[0]
function ww:utils/players_list/loop