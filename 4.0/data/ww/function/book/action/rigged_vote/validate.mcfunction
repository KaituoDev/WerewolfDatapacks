# context: @s = player
# storage: ww:temp riggedVoteRecords
# output: 1 = true, 0 = false

# riggedVoteRecords = [{uuid: UUID, player: str}]
data modify storage ww:temp riggedVoteRecords set value []
function ww:player/role/get_state
execute if data storage ww:output playerState.riggedVoteRecords[0] run \
  data modify storage ww:temp riggedVoteRecords set from storage ww:output playerState.riggedVoteRecords

execute store result score %length ww.var run data get storage ww:temp riggedVoteRecords
execute unless score %length ww.var matches 2 run return 0

# sanitizes current selections, make sure all are alive
function ww:book/action/rigged_vote/sanitize

# after sanitization, perform another length check
execute store result score %length ww.var run data get storage ww:temp riggedVoteRecords
execute unless score %length ww.var matches 2 run return 0

# all selected players are alive, and length meets requirement
return 1