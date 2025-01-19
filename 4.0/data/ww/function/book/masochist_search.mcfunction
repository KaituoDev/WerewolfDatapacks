# context: @s = player

clear @s written_book[minecraft:custom_data={"ww.book":"ww.skill.masochist_search"}]

function ww:book/build/utils/_init { \
  title: '{"bold":true,"color":"aqua","text":"寻找教徒"}', \
  id: 'ww.skill.masochist_search' \
}

# get player state of masochist_search records, and in select_player
# add which role was previously found for the given player in hover text
data modify storage ww:temp masochistSearchRecords set value {}
function ww:player/role/get_state
execute if data storage ww:output playerState.masochistSearchRecords run \
  data modify storage ww:temp masochistSearchRecords set from storage ww:output playerState.masochistSearchRecords

execute as @e[predicate=ww:alive] run function ww:book/build/masochist_search/select_player

# finalizes createBookInput.pages
function ww:book/build/utils/sanitize_enumerated
function ww:book/build/utils/construct
function ww:book/build/utils/_create with storage ww:temp createBookInput