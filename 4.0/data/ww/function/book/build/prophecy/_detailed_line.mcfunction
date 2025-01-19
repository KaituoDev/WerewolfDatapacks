# context: @s = player | villager
# inputs: {name, func, color, role, campaign}
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp prophecyRecords

$data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"$(name) ","color":"$(color)","bold":true,"clickEvent":{"action":"run_command","value":"$(func)"}, \
  "hoverEvent":{"action":"show_text","value":[ \
    {"text": "上次查到隸屬於 ", "color": "white", "bold": false}, \
    {"text": "$(campaign)", "color": "$(color)", "bold": true} \
  ]}}, \
  "\\n\\n" \
]'