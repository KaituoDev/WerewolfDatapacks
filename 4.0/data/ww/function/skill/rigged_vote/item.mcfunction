# context: @s = player | villager

scoreboard players enable @s ww.rigVote
function ww:player/role/_remove_state {path: 'riggedVoteRecords'}
function ww:book/rigged_vote