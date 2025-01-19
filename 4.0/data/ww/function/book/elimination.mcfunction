# context: @s
# stats: 6 players = ~403 commands

clear @s written_book[minecraft:custom_data~{"ww.book":"ww.skill.elimination"}]

function ww:book/build/utils/_init { \
  title: '{"bold":true,"color":"gold","text":"投票书"}', \
  id: 'ww.skill.elimination' \
}

execute as @e[predicate=ww:alive] run function ww:book/build/elimination/select_player

# finalizes createBookInput.pages
function ww:book/build/utils/sanitize_enumerated
function ww:book/build/utils/construct
function ww:book/build/utils/_create with storage ww:temp createBookInput