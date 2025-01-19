# context: @s = player
# inputs: {uuid}

#$effect give @n[nbt={UUID:$(uuid)}] glowing 1 0 true

$function ww:player/role/_set_state {path: 'stealTarget', value: $(uuid)}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你标记了 ","color":"white","bold":false},{"text":"隐形玩家","color":"green","bold":true}]' \
}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=!ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你标记了 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true}]' \
}