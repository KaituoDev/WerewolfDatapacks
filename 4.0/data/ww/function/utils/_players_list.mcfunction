# context: @s = player
# inputs: {list: [uuid]}
# output: ww:output playersList

data remove storage ww:output playersList
$data modify storage ww:temp joinStringInput set value {strings: [], delimiter: ', ', list: $(list)}

# converts [uuid] -> [name]
function ww:utils/players_list/loop

# converts [name] -> 'name1, name2'
function ww:utils/_join_string with storage ww:temp joinStringInput
data modify storage ww:output playersList set from storage ww:output joinString