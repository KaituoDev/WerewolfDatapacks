# context: @s = player
# inputs {origin: UUID}

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
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['{"text":""}', \
  '{"text":""}', \
  '{"text":""}', \
  '{"text":""}'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"狼人陣營","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/pool/_bads\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}

# Center
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"人類陣營","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/pool/_goods\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"顯示配置","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/info/pool\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"主畫面","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/_home\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}

# Right 1
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"怨靈陣營","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/pool/_spirits\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}

# Right 2
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @n[nbt={UUID:$(origin)}] run data merge block ^2 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['{"text":""}', \
  '{"text":"重置所有職業池","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/action/pool/_reset_all\\", args: {}}"}}', \
  '{"text":""}', \
  '{"text":""}'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}