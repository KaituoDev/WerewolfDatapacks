# context: @s = player

function ww:player/_get_state {name: 'playerRole'}
execute unless data storage ww:output playerState run return fail

clear @s written_book[minecraft:custom_data={"ww.book":"ww.intro.role"}]

function ww:book/build/utils/_init { \
  title: '{"bold":true,"color":"aqua","text":"职业介绍"}', \
  id: 'ww.intro.role' \
}

# construct the role page
data modify storage ww:temp rolePageInput set value {}
data modify storage ww:temp rolePageInput.id set from storage ww:output playerState.id
function ww:book/build/_role_page with storage ww:temp rolePageInput

# finalize createBookInput.pages
function ww:book/build/utils/sanitize_enumerated
function ww:book/build/utils/construct
data modify storage ww:temp createBookInput.slot set value 'hotbar.8'
function ww:book/build/utils/_item_replace with storage ww:temp createBookInput