# context: @s = player

function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"全力冲刺！","color":"white","bold":true}]' \
}

effect give @s minecraft:speed 5 4 true
effect give @s minecraft:jump_boost 5 0 true
clear @s *[minecraft:custom_data~{sprint:true}]