# context: @s = player

clear @s written_book[minecraft:custom_data~{"ww.book":"ww.skill.ninja_scroll"}]

function ww:book/build/utils/_init { \
  title: '{"bold":true,"color":"gold","text":"忍法卷轴"}', \
  id: 'ww.skill.ninja_scroll' \
}

data modify storage ww:temp createBookInput.rows append value '[ {"text":"随机","color":"black","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"随机使用以下任一种忍术","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger ww.ninjaScroll set 999"}}, "\\n\\n" ]'
function ww:book/build/utils/on_new_row

data modify storage ww:temp createBookInput.rows append value '[ {"text":"化猫","color":"#FF5F1F","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"变身猫咪10秒","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger ww.ninjaScroll set 1"}}, "\\n\\n" ]'
function ww:book/build/utils/on_new_row

data modify storage ww:temp createBookInput.rows append value '[ {"text":"岩遁","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"8秒无敌, 并持续震飞5格内的玩家","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger ww.ninjaScroll set 2"}}, "\\n\\n" ]'
function ww:book/build/utils/on_new_row

data modify storage ww:temp createBookInput.rows append value '[ {"text":"人遁","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"造出假人村民, 自己隐形10秒","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger ww.ninjaScroll set 3"}}, "\\n\\n" ]'
function ww:book/build/utils/on_new_row

data modify storage ww:temp createBookInput.rows append value '[ {"text":"雾遁","color":"#808080","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"制造烟幕, 自己隐形10秒","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger ww.ninjaScroll set 4"}}, "\\n\\n" ]'
function ww:book/build/utils/on_new_row

data modify storage ww:temp createBookInput.rows append value '[ {"text":"蚁遁","color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"变小10秒","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger ww.ninjaScroll set 5"}}, "\\n\\n" ]'
function ww:book/build/utils/on_new_row

# finalizes createBookInput.pages
function ww:book/build/utils/sanitize_enumerated
function ww:book/build/utils/construct
function ww:book/build/utils/_create with storage ww:temp createBookInput