# context: @s = player | villager
# inputs: {path}
# output: ww:output formatString
# maps [{uuid,player}, ...] -> [player1, player2] -> "player1, player2"

data remove storage ww:output formatString
function ww:player/role/get_state
$execute unless data storage ww:output playerState.$(path) run return 0

data modify storage ww:temp joinStringInput set value {strings: [], delimiter: ', ', inputs: []}
$data modify storage ww:temp joinStringInput.inputs set from storage ww:output playerState.$(path)
function ww:book/action/rigged_vote/format/loop

function ww:utils/_join_string with storage ww:temp joinStringInput
data modify storage ww:output formatString set from storage ww:output joinString

return 1