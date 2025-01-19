# context: @s = player | villager
# inputs: {name, func, uuid}
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp pairing, ww:temp currentSelectionsStr

data remove storage ww:temp row
$data modify storage ww:temp row set value '[ \
  {"text":"$(name) ","color":"black","clickEvent":{"action":"run_command","value":"$(func)"}}, \
  "\\n\\n" \
]'

execute store result score %length ww.var run data get storage ww:temp currentSelectionsStr
$execute if score %length ww.var matches 1.. run \
  data modify storage ww:temp row set value '[ \
    {"text":"$(name) ","color":"black","clickEvent":{"action":"run_command","value":"$(func)"}, \
    "hoverEvent":{"action":"show_text","value":[{"text":"當前選擇: ","color":"white"},{"storage": "ww:temp","nbt":"currentSelectionsStr","color": "green","bold": false}]}}, \
    "\\n\\n" \
  ]'

data modify storage ww:temp createBookInput.rows append from storage ww:temp row