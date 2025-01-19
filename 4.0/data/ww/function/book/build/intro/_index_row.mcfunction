# context: @s = player
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput
# inputs: {notes, skills, name, campaign, campaignColor, page}

$data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"【$(name)】","color":"$(campaignColor)", "bold":true, \
  "hoverEvent":{"action":"show_text","value":[{"text":"$(campaign)","color":"$(campaignColor)"}]}, \
  "clickEvent":{"action":"change_page","value":"$(page)"} \
  }, \
  "\\n\\n" \
]'
function ww:book/build/utils/on_new_row