# context: @s = player | villager, selections meet requirements

function ww:player/role/get_state

# show the list of players who have been selected so far
function ww:book/action/rigged_vote/_format {path: 'riggedVoteRecords'}

function ww:chat/_dm {type: 'rich_info', message: \
  '[{"text":"你将在结算时把 ","color":"white","bold":false},{"nbt":"formatString","storage":"ww:output","color":"green"},{"text":" 票数互换","color":"white"}]' \
}