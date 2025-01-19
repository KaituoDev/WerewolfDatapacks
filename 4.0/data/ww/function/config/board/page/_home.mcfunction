# context: @s = player
# inputs: {origin: UUID}

# Left 2
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute unless predicate ww:is_our_map at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"传送回大厅","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:game/teleport_lobby\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute unless predicate ww:is_our_map at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"设此为大厅","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/action/set_lobby\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"切换旁白","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ww.narrator"}}', \
  '""','""'], color:"white"} \
}

# Left 1
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"职业设定","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/_pool\\", args: {}}"}}', \
  '""','""' ], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"时间设定","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/_time\\", args: {}}"}}', \
  '""','""' ], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}

# Center
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"地图设定","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/_map\\", args: {}}"}}', \
  '""','""' ], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"细节设定","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/_detail\\", args: {}}"}}', \
  '""','""' ], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"显示配置","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/info_all\\", args: {}}"}}', \
  '""','""' ], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"开始游戏","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:game/start\\", args: {}}"}}', \
  '""','""' ], color:"white"} \
}

# Right 1
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"模式设定","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/_mode\\", args: {}}"}}', \
  '""','""' ], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"趣味设定","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/_amusing\\", args: {}}"}}', \
  '""','""' ], color:"white"} \
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
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"显示胜场","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:game/show_wins_hack\\", args: {}}"}}', \
  '""','""' ], color:"white"} \
}
$function ww:config/board/action/toggle/_update_sign {origin: $(origin), pos: '^2 ^-1 ^1', name: 'ENABLE_SHOW_WINS'}
