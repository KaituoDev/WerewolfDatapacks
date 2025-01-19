# context: @s = player
# location: at the origin
# inputs {id, name, origin, pos}

$function ww:config/board/action/time/_format {id: '$(id)'}

$data modify block $(pos) front_text set value { \
  has_glowing_text:0b, \
  messages: [ \
    '""', \
    '{"text":"$(name)","color":"white","bold":true}', \
    '{"storage":"ww:output","nbt":"timeDisplay","interpret":true,"bold":true}', \
    '{"text":"","clickEvent":{"action":"run_command","value":"function ww:config/board/action/_run {func: \\"ww:config/board/action/time/_update\\", args: {id: \\"$(id)\\", name: \\"$(name)\\", origin: $(origin), pos: \\"$(pos)\\"}}"}}' \
  ] \
}