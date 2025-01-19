# context: @s = player | villager
# score: @s ww.rigVote

data modify storage ww:temp getUUIDInput set value {}
execute store result storage ww:temp getUUIDInput.score int 1 run scoreboard players get @s ww.rigVote

scoreboard players reset @s ww.rigVote

data modify storage ww:temp storeDataInput set value {}

# 1. get the corresponding player's uuid info by ww.globalId
execute store result score %success ww.var run function ww:player/id/_get_uuid with storage ww:temp getUUIDInput
execute if score %success ww.var matches 0 run return fail

data modify storage ww:temp storeDataInput.uuid set from storage ww:output playerUUID

function ww:player/name/_get with storage ww:temp storeDataInput
data modify storage ww:temp storeDataInput.player set from storage ww:output playerName

# 3. store the information in @s playerRoleState: path = riggedVoteRecords, value = obj
function ww:book/action/rigged_vote/_record with storage ww:temp storeDataInput

# 4. tellraw
function ww:book/action/rigged_vote/_info with storage ww:temp storeDataInput

# based on current selections, decide whether to finalize the rigged_vote
# or continue to allow rigged_vote

execute store result score %riggedVoteIsValid ww.var run function ww:book/action/rigged_vote/validate

# renew book
execute if score %riggedVoteIsValid ww.var matches 0 run scoreboard players enable @s ww.rigVote
execute if score %riggedVoteIsValid ww.var matches 0 run function ww:queue/_add {task: 'book/rigged_vote'}

# finalize
execute if score %riggedVoteIsValid ww.var matches 1 run clear @s written_book[minecraft:custom_data~{"ww.book":"ww.skill.rigged_vote"}]
execute if score %riggedVoteIsValid ww.var matches 1 run function ww:book/action/rigged_vote/finalize

return 1