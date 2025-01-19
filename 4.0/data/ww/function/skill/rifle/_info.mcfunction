# context: @s = player
# inputs: {uuid}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你打中 ","color":"white","bold":false},{"text":"隐形玩家","color":"green","bold":true}]' \
}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=!ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你打中 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true}]' \
}