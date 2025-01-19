# context: @s = player

function ww:config/board/action/time/_format {id: 'MAX_DAY_TICKS'}
tellraw @s [ \
  {"text":"白天时间: "}, \
  {"storage":"ww:output","nbt":"timeDisplay","interpret":true,"bold":true} \
]

function ww:config/board/action/time/_format {id: 'MAX_NIGHT_TICKS'}
tellraw @s [ \
  {"text":"夜晚时间: "}, \
  {"storage":"ww:output","nbt":"timeDisplay","interpret":true,"bold":true} \
]