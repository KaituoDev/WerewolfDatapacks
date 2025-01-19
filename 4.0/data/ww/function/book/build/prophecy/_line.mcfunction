# context: @s = player | villager
# inputs: {name, func, uuid}
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp prophecyRecords

$execute unless data storage ww:temp prophecyRecords.'$(uuid)' run return run \
  data modify storage ww:temp createBookInput.rows append value '[ \
    {"text":"$(name) ","obfuscated":$(obfuscated),"bold":false,"color":"black","clickEvent":{"action":"run_command","value":"$(func)"}, \
    "hoverEvent":{"action":"show_text","value":[{"text": "尚未查明","color": "white","bold": false}]}}, \
    "\\n\\n" \
  ]'

$data modify storage ww:temp detailedLineInput set value {name: '$(name)', func: '$(func)'}
$data modify storage ww:temp detailedLineInput.color set from storage ww:temp prophecyRecords.'$(uuid)'.color
$data modify storage ww:temp detailedLineInput.role set from storage ww:temp prophecyRecords.'$(uuid)'.role
$data modify storage ww:temp detailedLineInput.campaign set from storage ww:temp prophecyRecords.'$(uuid)'.campaign

function ww:book/build/prophecy/_detailed_line with storage ww:temp detailedLineInput