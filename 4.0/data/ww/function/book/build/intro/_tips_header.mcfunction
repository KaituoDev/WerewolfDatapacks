# context: @s = player
# storage: ww:temp createBookInput
# inputs: {name, color, goal}

$data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"$(name)","color":"$(color)","bold":true}, \
  {"text":"：","color":"black","bold":false}, \
  {"text":"$(goal)","color":"black","bold":false}, \
  "\\n\\n" \
]'
function ww:book/build/utils/on_new_row
