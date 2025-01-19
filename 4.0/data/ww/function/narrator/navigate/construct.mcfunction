# context: @s = villager

data modify storage ww:temp constructInput set value {}
execute store result storage ww:temp constructInput.id int 1 run function ww:player/id

function ww:player/name
data modify storage ww:temp constructInput.name set from storage ww:output playerName

function ww:narrator/navigate/_construct with storage ww:temp constructInput