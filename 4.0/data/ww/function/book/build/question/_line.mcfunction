# context: @s = player | villager
# inputs: {name, func, uuid}
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp questionRecords

$execute unless data storage ww:temp questionRecords.'$(uuid)' run return run \
  data modify storage ww:temp createBookInput.rows append value '[ \
    {"text":"$(name) ","bold":false,"color":"black","clickEvent":{"action":"run_command","value":"$(func)"}, \
    "hoverEvent":{"action":"show_text","value":[{"text": "尚未查明","color": "white","bold": false}]}}, \
    "\\n\\n" \
  ]'

$data modify storage ww:temp detailedLineInput set value {name: '$(name)', func: '$(func)'}
$data modify storage ww:temp detailedLineInput.campaign set from storage ww:temp questionRecords.'$(uuid)'.campaign
$data modify storage ww:temp detailedLineInput.result set from storage ww:temp questionRecords.'$(uuid)'.result

function ww:book/build/question/_detailed_line with storage ww:temp detailedLineInput