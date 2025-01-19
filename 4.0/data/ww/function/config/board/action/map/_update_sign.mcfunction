# context: @s = player
# location: at the origin
# inputs {index, origin, pos, glowing, color}

$execute at @n[nbt={UUID:$(origin)}] run data modify block $(pos) front_text set value { \
  has_glowing_text:$(glowing), \
  messages: [ \
    '""', \
    '{"storage":"ww:memory","nbt":"config.MAPS[$(index)].name","color":"$(color)","bold":true}', \
    '""', \
    '{"text":"","clickEvent":{"action":"run_command","value":"function ww:config/board/action/_run {func: \\"ww:config/board/action/map/_update\\", args: {index: \\"$(index)\\", origin: $(origin), pos: \\"$(pos)\\"}}"}}' \
  ] \
}
