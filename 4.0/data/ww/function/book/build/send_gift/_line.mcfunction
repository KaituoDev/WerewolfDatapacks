# context: @s = player | villager
# inputs: {name, func, uuid}
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput

$data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"$(name)","bold":false,"color":"black","clickEvent":{"action":"run_command","value":"$(func)"}}, \
  "\\n\\n" \
]'