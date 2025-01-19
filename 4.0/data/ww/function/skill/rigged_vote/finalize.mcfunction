# context: @s = player | villager

function ww:player/role/get_state

# validate records are not empty
execute unless data storage ww:output playerState.riggedVoteRecords[0] run return fail

# validate length is 2
execute store result score %length ww.var run data get storage ww:output playerState.riggedVoteRecords
execute unless score %length ww.var matches 2 run return fail

data modify storage ww:temp swapInput set value {}
data modify storage ww:temp swapInput.player1 set from storage ww:output playerState.riggedVoteRecords[0].uuid
data modify storage ww:temp swapInput.player2 set from storage ww:output playerState.riggedVoteRecords[1].uuid

# remove state from the player
function ww:player/role/_remove_state {path: 'riggedVoteRecords'}

# swap the votes
execute if entity @s[tag=ww.fool] run return run \ 
  function ww:skill/rigged_vote/_fool with storage ww:temp swapInput
function ww:skill/rigged_vote/_swap with storage ww:temp swapInput