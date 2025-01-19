# context: @s = player | villager
# inputs: {name, func, result, campaign}
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp questionRecords

$data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"$(name) ","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"$(func)"}, \
  "hoverEvent":{"action":"show_text","value":[ \
    {"text": "上次查到", "color": "white", "bold": false}, \
    {"text": "$(result)", "color": "white", "bold": true}, \
    {"text": "$(campaign)", "color": "white", "bold": false} \
  ]}}, \
  "\\n\\n" \
]'