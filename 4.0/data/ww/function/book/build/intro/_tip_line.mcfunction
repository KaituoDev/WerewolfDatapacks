# context: @s = player
# storage: ww:temp createBookInput
# scores: %tipIndex ww.var
# inputs: {text}

$data modify storage ww:temp createBookInput.rows append value '[ \
  {"score":{"name":"%tipIndex","objective":"ww.var"},"color":"gold","bold":true}, \
  {"text":". ","color":"gold","bold":true}, \
  {"text":"$(text)","color":"black","bold":false}, \
  "\\n\\n" \
]'
function ww:book/build/utils/on_new_row
