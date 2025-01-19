## sets officerOrder

scoreboard players reset * officerOrder
scoreboard players set %current officerOrder 0
scoreboard players set @a[scores={officerVoteCount=1..}] officerOrder 0
scoreboard players operation %current_max_vote officerOrder = %max officerVoteCount

# sets everyone's officer order and display the orders
function ww:session/officer/end/__finalize

scoreboard players set %current officerOrder 1
function ww:session/officer/order/next

function ww:session/officer/end