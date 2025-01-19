# context: @s = player
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput
# inputs: {notes, skills, name, campaign, campaignColor}

$data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"被动 ","color":"blue", "bold":true, \
  "hoverEvent":{"action":"show_text","value":$(notes)}}, \
  "\\n\\n" \
]'
function ww:book/build/utils/on_new_row