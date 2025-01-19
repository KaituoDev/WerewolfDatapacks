# context: @s = player
# location: at the origin
# inputs {origin}

# conquer mode
data modify storage ww:temp text set value '{"text":"屠邊模式","color":"aqua","bold":true}'
execute if function ww:game/mode/is_conquer run data modify storage ww:temp text set value '{"text":"屠邊模式","color":"yellow","bold":true}'

data merge block ^-1 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"nbt":"text","storage":"ww:temp","interpret":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/action/mode/_update\\", args: {mode: \\"CONQUER\\"}}"}}', \
  '""','""'], color:"white"} \
}

# massacre mode
data modify storage ww:temp text set value '{"text":"屠城模式","color":"aqua","bold":true}'
execute if function ww:game/mode/is_massacre run data modify storage ww:temp text set value '{"text":"屠城模式","color":"yellow","bold":true}'

data merge block ^1 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"nbt":"text","storage":"ww:temp","interpret":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/action/mode/_update\\", args: {mode: \\"MASSACRE\\"}}"}}', \
  '""','""'], color:"white"} \
}

# lunatic mode
data modify storage ww:temp text set value '{"text":"瘋人院模式","color":"aqua","bold":true}'
execute if function ww:game/mode/is_lunatic run data modify storage ww:temp text set value '{"text":"瘋人院模式","color":"yellow","bold":true}'

data merge block ^ ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"nbt":"text","storage":"ww:temp","interpret":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/action/mode/_update\\", args: {mode: \\"LUNATIC\\"}}"}}', \
  '""','""'], color:"white"} \
}

# teaming mode
# data modify storage ww:temp text set value '{"text":"組隊模式","color":"aqua","bold":true}'
# execute if function ww:game/mode/is_teaming run data modify storage ww:temp text set value '{"text":"組隊模式","color":"yellow","bold":true}'

# data merge block ^ ^1 ^1 { \
#   front_text:{has_glowing_text:0b, messages: ['""', \
#   '{"nbt":"text","storage":"ww:temp","interpret":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/action/mode/_update\\", args: {mode: \\"TEAMING\\"}}"}}', \
#   '""','""'], color:"white"} \
# }

data remove storage ww:temp text
