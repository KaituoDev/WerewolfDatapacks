# context: @s = player | villager
# score: @s ww.masochistSearch

data modify storage ww:temp getUUIDInput set value {}
execute store result storage ww:temp getUUIDInput.score int 1 run scoreboard players get @s ww.masochistSearch

scoreboard players reset @s ww.masochistSearch

data modify storage ww:temp storeDataInput set value {}

# 1. get the corresponding player's uuid info by ww.globalId
execute store result score %success ww.var run function ww:player/id/_get_uuid with storage ww:temp getUUIDInput
execute if score %success ww.var matches 0 run return fail

data modify storage ww:temp storeDataInput.uuid set from storage ww:output playerUUID

# 2. get role info by uuid
data modify storage ww:temp getResultInput set value {}
data modify storage ww:temp getResultInput.uuid set from storage ww:output playerUUID
function ww:book/action/masochist_search/_get_result with storage ww:temp getResultInput

data modify storage ww:temp storeDataInput.result set from storage ww:output playerResult.text
data modify storage ww:temp storeDataInput.color set from storage ww:output playerResult.color

function ww:player/name/_get with storage ww:temp storeDataInput
data modify storage ww:temp storeDataInput.player set from storage ww:output playerName

# 3. store the information in @s playerRoleState: path = masochist_search.uuid, value = obj
function ww:book/action/masochist_search/_record with storage ww:temp storeDataInput

# 4. tellraw
function ww:book/action/masochist_search/_info with storage ww:temp storeDataInput

# renew book
execute if entity @s[type=player] run function ww:queue/_add {task: 'book/masochist_search'}

return 1