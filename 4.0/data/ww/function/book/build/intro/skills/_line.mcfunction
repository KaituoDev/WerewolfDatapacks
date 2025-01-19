# context: @s = player
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput
# inputs: {name, descriptions, fool}

$data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"-","color":"black"}, \
  {"text":" $(name) ","color":"#05696B", \
  "hoverEvent":{"action":"show_text","value":$(descriptions)}}, \
  {"text":"[蠢]","color":"#153C4E", \
  "hoverEvent":{"action":"show_text","value":$(fool)}}, \
  "\\n\\n" \
]'

function ww:book/build/utils/on_new_row
