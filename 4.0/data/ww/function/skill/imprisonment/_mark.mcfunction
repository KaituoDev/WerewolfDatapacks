# context: @s = player
# inputs: {uuid}

$execute as @n[nbt={UUID:$(uuid)}] at @s run function ww:skill/imprisonment/block_display
$execute as @n[nbt={UUID:$(uuid)}] at @s run function ww:skill/za_warudo/init

$execute if entity @n[nbt={UUID:$(uuid)},predicate=ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你使 ","color":"white","bold":false},{"text":"隐形玩家","color":"green","bold":true},{"text":" 强制坐牢","color":"white","bold":false}]' \
}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=!ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你使 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true},{"text":" 强制坐牢","color":"white","bold":false}]' \
}