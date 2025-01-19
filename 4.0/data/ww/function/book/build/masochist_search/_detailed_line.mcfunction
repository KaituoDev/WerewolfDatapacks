# context: @s = player | villager
# inputs: {name, func, color, result}
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp masochistSearchRecords

$data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"$(name) ","color":"$(color)","bold":true,"clickEvent":{"action":"run_command","value":"$(func)"}, \
  "hoverEvent":{"action":"show_text","value":[ \
    {"text": "上次查到 ", "color": "white", "bold": false}, \
    {"text": "$(result)", "color": "$(color)", "bold": true}, \
    {"text": " 抖M", "color": "white", "bold": false} \
  ]}}, \
  "\\n\\n" \
]'