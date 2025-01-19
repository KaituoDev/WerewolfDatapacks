# context: @s

clear @s written_book[minecraft:custom_data={"ww.book":"ww.skill.send_gift"}]

function ww:book/build/utils/_init { \
  title: '{"bold":true,"color":"aqua","text":"發送禮物"}', \
  id: 'ww.skill.send_gift' \
}

execute as @e[predicate=ww:alive,tag=!santa] run function ww:book/build/send_gift/select_player

# finalizes createBookInput.pages
function ww:book/build/utils/sanitize_enumerated
function ww:book/build/utils/construct
function ww:book/build/utils/_create with storage ww:temp createBookInput