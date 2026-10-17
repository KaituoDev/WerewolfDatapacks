# context: @s = player
# storage: ww:temp createBookInput
# inputs: {index, text}

# No space after the number on purpose: a space is a line break opportunity, and
# the book would push the whole sentence onto the next line.
$data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"$(index).$(text)","color":"black","bold":false}, \
  "\\n\\n" \
]'
function ww:book/build/utils/on_new_row
