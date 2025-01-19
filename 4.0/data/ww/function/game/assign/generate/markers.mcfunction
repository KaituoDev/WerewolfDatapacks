# context: server

execute store result score %length ww.var run data get storage ww:temp roles
execute if score %length ww.var matches 0 run return 0

data modify storage ww:temp createMarkerInput set value {}
data modify storage ww:temp createMarkerInput.id set from storage ww:temp roles[-1].id
function ww:role/_find_by_id with storage ww:temp createMarkerInput
data modify storage ww:temp createMarkerInput.campaign set from storage ww:output roleObj.campaign.id
execute summon marker run function ww:game/assign/generate/_marker with storage ww:temp createMarkerInput

data remove storage ww:temp roles[-1]

function ww:game/assign/generate/markers