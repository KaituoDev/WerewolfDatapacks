# context: server
# storage: ww:temp candidates, ww:temp mapsClone
# scores: %length ww.var

execute unless data storage ww:temp mapsClone[0] run return 0

execute store result score %modified ww.var run data get storage ww:temp mapsClone[0].modified
execute if score %modified ww.var matches 1 run data modify storage ww:temp candidates append from storage ww:temp mapsClone[0]
data remove storage ww:temp mapsClone[0]

function ww:game/map/select/loop
