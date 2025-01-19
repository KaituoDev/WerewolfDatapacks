# context: @s
# inputs: {title,tag}

clear @s written_book[minecraft:custom_data~{"ww.book":"ww.skill.pairing"}]

function ww:book/build/utils/_init { \
  title: '{"bold":true,"color":"aqua","text":"配对书"}', \
  id: 'ww.skill.pairing' \
}

# pairing = [{uuid: UUID, player: str}]
data modify storage ww:temp pairing set value []
function ww:player/role/get_state
execute if data storage ww:output playerState.pairing[0] run \
  data modify storage ww:temp pairing set from storage ww:output playerState.pairing

data modify storage ww:temp currentSelections set from storage ww:temp pairing
data modify storage ww:temp joinStringInput set value {strings: [], delimiter: ', '}

# maps [{uuid, player}, ...] -> [player, ...]
function ww:book/build/pairing/construct_current_selections
function ww:utils/_join_string with storage ww:temp joinStringInput

data remove storage ww:temp currentSelectionsStr
data modify storage ww:temp currentSelectionsStr set from storage ww:output joinString

execute as @e[predicate=ww:alive,tag=!ww.lover] run function ww:book/build/pairing/select_player

# finalizes createBookInput.pages
function ww:book/build/utils/sanitize_enumerated
function ww:book/build/utils/construct
function ww:book/build/utils/_create with storage ww:temp createBookInput