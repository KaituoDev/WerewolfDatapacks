# context: @s = player | villager
# score: @s ww.prophecy

data modify storage ww:temp getUUIDInput set value {}
execute store result storage ww:temp getUUIDInput.score int 1 run scoreboard players get @s ww.prophecy

scoreboard players reset @s ww.prophecy
#scoreboard players enable @s ww.prophecy


data modify storage ww:temp storeDataInput set value {}

# 1. get the corresponding player's uuid info by ww.globalId
execute store result score %success ww.var run function ww:player/id/_get_uuid with storage ww:temp getUUIDInput
execute if score %success ww.var matches 0 run return fail

data modify storage ww:temp storeDataInput.uuid set from storage ww:output playerUUID

# 2. get role info by uuid
data modify storage ww:temp getRoleInput set value {}
data modify storage ww:temp getRoleInput.uuid set from storage ww:output playerUUID
execute store result score %success ww.var run function ww:book/action/prophecy/_get_role with storage ww:temp getRoleInput
execute if score %success ww.var matches 0 run return fail

data modify storage ww:temp storeDataInput.role set from storage ww:output playerRole.name
data modify storage ww:temp storeDataInput.campaign set from storage ww:output playerRole.campaign.name
data modify storage ww:temp storeDataInput.color set from storage ww:output playerRole.campaign.color

function ww:player/name/_get with storage ww:temp storeDataInput
data modify storage ww:temp storeDataInput.player set from storage ww:output playerName

# 3. store the information in @s playerRoleState: path = prophecy.uuid, value = obj
function ww:book/action/prophecy/_record with storage ww:temp storeDataInput

# 4. tellraw
function ww:book/action/prophecy/_info with storage ww:temp storeDataInput

# renew book
function ww:queue/_add {task: 'book/prophecy'}

return 1