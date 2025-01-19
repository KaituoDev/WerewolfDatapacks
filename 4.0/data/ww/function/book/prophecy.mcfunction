# context: @s
# stats: 6 players = ~403 commands

clear @s written_book[minecraft:custom_data={"ww.book":"ww.skill.prophecy"}]

function ww:book/build/utils/_init { \
  title: '{"bold":true,"color":"aqua","text":"預言書"}', \
  id: 'ww.skill.prophecy' \
}

# get player state of prophecy records, and in select_player
# add which role was previously found for the given player in hover text
data modify storage ww:temp prophecyRecords set value {}
function ww:player/role/get_state
execute if data storage ww:output playerState.prophecy run \
  data modify storage ww:temp prophecyRecords set from storage ww:output playerState.prophecy

execute as @e[predicate=ww:player] run function ww:book/build/prophecy/select_player

# finalizes createBookInput.pages
function ww:book/build/utils/sanitize_enumerated
function ww:book/build/utils/construct
function ww:book/build/utils/_create with storage ww:temp createBookInput