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
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"平票發生時","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/choice/_update_sign {origin: $(origin), pos: '^-2 ^1 ^1', name: 'VOTE_DRAW_HANDLING', choices: ["隨機死一人", "無人死亡", "都死"]}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-2 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"盜賊死後仍可偷職業","color":"aqua","bold":true}', \
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
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"顯示死因","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/toggle/_update_sign {origin: $(origin), pos: '^-1 ^1 ^1', name: 'ENABLE_DEATH_CAUSE'}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^-1 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"顯示AI預言書的結果","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/toggle/_update_sign {origin: $(origin), pos: '^-1 ^ ^1', name: 'ENABLE_AI_PROPHECY_INFO'}


$execute at @n[nbt={UUID:$(origin)}] run data merge block ^-1 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
    '[{"text":"蹲下","color":"gold","bold":true},{"text":"+","color":"white","bold":false},{"text":"右鍵","color":"gold","bold":true},{"text":" 減少數量","color":"white","bold":false}]', \
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
$function ww:config/board/action/choice/_update_sign {origin: $(origin), pos: '^ ^1 ^1', name: 'VOTE_ITEM_TYPE', choices: ["暴民劍","遠距暴民劍", "穿牆投票", "投票書"]}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"戀人可以被偷","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/toggle/_update_sign {origin: $(origin), pos: '^ ^ ^1', name: 'ENABLE_STEAL_LOVERS'}


$execute at @e[nbt={UUID:$(origin)}] run data merge block ^ ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
  '{"text":"主畫面","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"function ww:config/board/action/_run {func: \\"ww:config/board/page/_home\\", args: {}}"}}', \
  '""','""'], color:"white"} \
}

# Right 1
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"幾天後發光","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/range/_update_sign {origin: $(origin), pos: '^1 ^1 ^1', name: 'GLOWING_ON_DAY'}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^1 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"獵槍入夜時重置目標","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/toggle/_update_sign {origin: $(origin), pos: '^1 ^ ^1', name: 'ENABLE_RIFLE_RESET'}


$execute at @n[nbt={UUID:$(origin)}] run data merge block ^1 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""', \
    '[{"text":"右鍵","color":"gold","bold":true},{"text":" 增加數量","color":"white","bold":false}]', \
    '""','""'], color:"white"} \
}

# Right 2
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^2 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','{"text":"剩幾人發光","color":"aqua","bold":true}', \
  '""', '""'], color:"white"} \
}
$function ww:config/board/action/range/_update_sign {origin: $(origin), pos: '^2 ^1 ^1', name: 'GLOWING_PLAYERS_REMAIN'}

$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^ ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}
$execute at @e[nbt={UUID:$(origin)}] run data merge block ^2 ^-1 ^1 { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}