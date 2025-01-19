# context: @s = player
# inputs {origin: UUID}

# Left 2
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"平票发生时","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/choice/_update_sign {origin: $(origin), pos: '^-2 ^1 ^1', name: 'VOTE_DRAW_HANDLING', choices: ["随机死一人", "无人死亡", "都死"]}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"盗贼死后仍可偷职业","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/toggle/_update_sign {origin: $(origin), pos: '^-2 ^ ^1', name: 'ENABLE_DEAD_THIEF_STEAL'}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}

# Left 1
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"显示死因","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/toggle/_update_sign {origin: $(origin), pos: '^-1 ^1 ^1', name: 'ENABLE_DEATH_CAUSE'}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"显示AI预言书的结果","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/toggle/_update_sign {origin: $(origin), pos: '^-1 ^ ^1', name: 'ENABLE_AI_PROPHECY_INFO'}


$execute at @n[nbt={UUID:$(origin)}] run data merge block ^-1 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
    '[{"text":"蹲下","color":"gold","bold":true},{"text":"+","color":"white","bold":false},{"text":"右键","color":"gold","bold":true},{"text":" 减少数量","color":"white","bold":false}]', \
    '""','""'], color:"white"} \
}

# Center
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"投票道具","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/choice/_update_sign {origin: $(origin), pos: '^ ^1 ^1', name: 'VOTE_ITEM_TYPE', choices: ["暴民剑","远距暴民剑", "穿墙投票", "投票书"]}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"恋人可以被偷","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/toggle/_update_sign {origin: $(origin), pos: '^ ^ ^1', name: 'ENABLE_STEAL_LOVERS'}


$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"主画面","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"function ww:config/board/action/_run {func: \\"ww:config/board/page/_home\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}

# Right 1
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"几天后发光","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/range/_update_sign {origin: $(origin), pos: '^1 ^1 ^1', name: 'GLOWING_ON_DAY'}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"猎枪入夜时重置目标","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/toggle/_update_sign {origin: $(origin), pos: '^1 ^ ^1', name: 'ENABLE_RIFLE_RESET'}


$execute at @n[nbt={UUID:$(origin)}] run data merge block ^1 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
    '[{"text":"右键","color":"gold","bold":true},{"text":" 增加数量","color":"white","bold":false}]', \
    '""','""'], color:"white"} \
}

# Right 2
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"剩几人发光","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/range/_update_sign {origin: $(origin), pos: '^2 ^1 ^1', name: 'GLOWING_PLAYERS_REMAIN'}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}