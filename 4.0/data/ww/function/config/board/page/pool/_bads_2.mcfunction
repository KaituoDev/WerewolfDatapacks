# context: @s = player
# inputs {origin: UUID}

# Left 2
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'charm_wolf', origin: $(origin), pos: '^-2 ^2 ^1'}
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^-2 ^1 ^1'}

$execute at @n[nbt={UUID:$(origin)}] run data merge block ^-2 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @n[nbt={UUID:$(origin)}] run data merge block ^-2 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}

# Left 1
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^-1 ^2 ^1'}
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^-1 ^1 ^1'}

$execute at @n[nbt={UUID:$(origin)}] run data merge block ^-1 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['{"text":""}', \
  '{"text":"上一頁","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/pool/_bads\\", args: {pos: \\"^-1 ^ ^1\\"}}"}}', \
  '{"text":""}', \
  '{"text":""}'], color:"white"} \
}

$execute at @n[nbt={UUID:$(origin)}] run data merge block ^-1 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
    '[{"text":"蹲下","color":"gold","bold":true},{"text":"+","color":"white","bold":false},{"text":"右鍵","color":"gold","bold":true},{"text":" 減少數量","color":"white","bold":false}]', \
    '""','""'], color:"white"} \
}

# Center
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^ ^2 ^1'}
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^ ^1 ^1'}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"顯示配置","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/info/pool\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}
$execute at @n[nbt={UUID:$(origin)}] run data merge block ^ ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"主畫面","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/_home\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}

# Right 1
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^1 ^2 ^1'}
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^1 ^1 ^1'}

$execute at @n[nbt={UUID:$(origin)}] run data merge block ^1 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}

$execute at @n[nbt={UUID:$(origin)}] run data merge block ^1 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
    '[{"text":"右鍵","color":"gold","bold":true},{"text":" 增加數量","color":"white","bold":false}]', \
    '""','""'], color:"white"} \
}

# Right 2
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^2 ^2 ^1'}
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^2 ^1 ^1'}

$execute at @n[nbt={UUID:$(origin)}] run data merge block ^2 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['{"text":""}', \
  '{"text":"重置狼人池設定","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/action/pool/_reset_campaign\\", args: {campaign: \\"bads\\", page: \\"_bads_2\\"}}"}}', \
  '{"text":""}', \
  '{"text":""}'], color:"white"} \
}
$execute at @n[nbt={UUID:$(origin)}] run data merge block ^2 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}