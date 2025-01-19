# context: server
# storage: ftb:temp roles

execute unless entity @e[tag=ftb.marker,tag=!ww.role_assignment] run return 0
execute store result score %length ftb.var run data get storage ftb:temp roles
execute if score %length ftb.var matches 0 run return 0

data modify storage ftb:temp setupInput set value {}
data modify storage ftb:temp setupInput.id set from storage ftb:temp roles[-1].id
function ww:role/_find_by_id with storage ftb:temp setupInput
data modify storage ftb:temp setupInput.campaign set from storage ww:output roleObj.campaign.id
data modify storage ftb:temp setupInput.color set from storage ww:output roleObj.campaign.color
data modify storage ftb:temp setupInput.name set from storage ww:output roleObj.name
execute as @n[sort=random,tag=ftb.marker,tag=!ww.role_assignment] at @s run function ftb:game/find/generate/_setup with storage ftb:temp setupInput

data remove storage ftb:temp roles[-1]

function ftb:game/find/generate/loop