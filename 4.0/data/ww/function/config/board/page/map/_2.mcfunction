# context: @s = player
# inputs {origin: UUID}

$function ww:config/board/action/map/_reset {batch: 1, origin: $(origin)}

# Left 2
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}

# Left 1

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"显示详情","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/action/map/_info\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"上一页","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/map/_1\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}

# Center

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"主画面","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/_home\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}

# Right 1
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"随机地图","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/toggle/_update_sign {origin: $(origin), pos: '^1 ^ ^1', name: 'RANDOM_MAP'}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""', \
  '""', '""'], color:"white"} \
}

# $execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^-1 ^1 { \
#   front_text:{has_glowing_text:0b, messages: ['""', \
#   '{"text":"下一页","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/map/_3\\", args: {}}"}}', \
#   '""','""'], color:"white"} \
# }

# Right 2
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}