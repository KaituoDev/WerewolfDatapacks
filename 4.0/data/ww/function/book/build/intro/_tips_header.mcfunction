# context: @s = player
# storage: ww:temp createBookInput
# inputs: {name, color}

$data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"$(name)","color":"$(color)","bold":true}, \
  {"text":"职业技巧：","color":"black","bold":false}, \
  "\\n\\n" \
]'
function ww:book/build/utils/on_new_row
