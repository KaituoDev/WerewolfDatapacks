# context: @s = player
# inputs {origin: UUID}

# Left 2
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'detective', origin: $(origin), pos: '^-2 ^2 ^1'}
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
  function ww:config/board/action/pool/_update_sign {id: 'villager', origin: $(origin), pos: '^-1 ^2 ^1'}
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^-1 ^1 ^1'}

$execute at @n[nbt={UUID:$(origin)}] run data merge block ^-1 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['{"text":""}', \
  '{"text":"上一页","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/pool/_goods_2\\", args: {pos: \\"^-1 ^ ^1\\"}}"}}', \
  '{"text":""}', \
  '{"text":""}'], color:"white"} \
}

$execute at @n[nbt={UUID:$(origin)}] run data merge block ^-1 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
    '[{"text":"蹲下","color":"gold","bold":true},{"text":"+","color":"white","bold":false},{"text":"右键","color":"gold","bold":true},{"text":" 减少数量","color":"white","bold":false}]', \
    '""','""'], color:"white"} \
}

# Center
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^ ^2 ^1'}
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^ ^1 ^1'}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"显示配置","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/info/pool\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}
$execute at @n[nbt={UUID:$(origin)}] run data merge block ^ ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"主画面","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/page/_home\\", args: {}}"}}', \
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
    '[{"text":"右键","color":"gold","bold":true},{"text":" 增加数量","color":"white","bold":false}]', \
    '""','""'], color:"white"} \
}

# Right 2
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^2 ^2 ^1'}
$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: 'aaa', origin: $(origin), pos: '^2 ^1 ^1'}

$execute at @n[nbt={UUID:$(origin)}] run data merge block ^2 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['{"text":""}', \
  '{"text":"重置人类池设定","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function ww:config/board/action/_run {func: \\"ww:config/board/action/pool/_reset_campaign\\", args: {campaign: \\"goods\\", page: \\"_goods_2\\"}}"}}', \
  '{"text":""}', \
  '{"text":""}'], color:"white"} \
}
$execute at @n[nbt={UUID:$(origin)}] run data merge block ^2 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}