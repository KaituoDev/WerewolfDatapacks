# context: @s = player
# inputs: {player}

$data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"請問 ","color":"black","bold":false}, \
  {"text":"$(player)","color":"gold","bold":true}, \
  "\\n\\n" \
]'
function ww:book/build/utils/on_new_row