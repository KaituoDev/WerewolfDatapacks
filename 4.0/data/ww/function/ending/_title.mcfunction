# context: server
# inputs: {title, subtitle, titleColor}

$title @a title {"text":"$(title)", "color":"$(titleColor)"}
$title @a subtitle {"text":"$(subtitle)"}

$tellraw @a [ \
  {"text":"\n********************\n", "color":"blue","bold":true}, \
  {"text":"结局: ","color":"white","bold":false}, \
  {"text":"$(title)","color":"$(titleColor)","bold":true}, \
  "\n", \
  {"text":"原因: ","color":"white","bold":false}, \
  {"text":"$(subtitle)","color":"yellow","bold":true} \
]
