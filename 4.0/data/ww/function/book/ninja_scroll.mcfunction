# context: @s = player

clear @s written_book[minecraft:custom_data~{"ww.book":"ww.skill.ninja_scroll"}]

function ww:book/build/utils/_init { \
  title: '{"bold":true,"color":"gold","text":"忍法卷軸"}', \
  id: 'ww.skill.ninja_scroll' \
}

data modify storage ww:temp createBookInput.rows append value '[ {"text":"隨機","color":"black","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"隨機使用以下任一種忍術","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger ww.ninjaScroll set 999"}}, "\\n\\n" ]'
function ww:book/build/utils/on_new_row

data modify storage ww:temp createBookInput.rows append value '[ {"text":"化貓","color":"#FF5F1F","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"變身貓咪10秒","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger ww.ninjaScroll set 1"}}, "\\n\\n" ]'
function ww:book/build/utils/on_new_row

data modify storage ww:temp createBookInput.rows append value '[ {"text":"岩遁","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"8秒無敵, 並持續震飛5格內的玩家","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger ww.ninjaScroll set 2"}}, "\\n\\n" ]'
function ww:book/build/utils/on_new_row

data modify storage ww:temp createBookInput.rows append value '[ {"text":"人遁","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"造出假人村民, 自己隱形10秒","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger ww.ninjaScroll set 3"}}, "\\n\\n" ]'
function ww:book/build/utils/on_new_row

data modify storage ww:temp createBookInput.rows append value '[ {"text":"霧遁","color":"#808080","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"製造煙幕, 自己隱形10秒","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger ww.ninjaScroll set 4"}}, "\\n\\n" ]'
function ww:book/build/utils/on_new_row

data modify storage ww:temp createBookInput.rows append value '[ {"text":"蟻遁","color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"變小10秒","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger ww.ninjaScroll set 5"}}, "\\n\\n" ]'
function ww:book/build/utils/on_new_row

# finalizes createBookInput.pages
function ww:book/build/utils/sanitize_enumerated
function ww:book/build/utils/construct
function ww:book/build/utils/_create with storage ww:temp createBookInput