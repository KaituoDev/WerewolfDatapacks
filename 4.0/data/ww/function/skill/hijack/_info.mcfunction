# context: @s = player
# inputs: {uuid}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你開始冒充 ","color":"white","bold":false},{"text":"隱形玩家","color":"green","bold":true}]' \
}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=!ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你開始冒充 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true}]' \
}

tag @s add this
$execute if entity @n[nbt={UUID:$(uuid)},predicate=!ww:is_invisible] if entity @s[tag=ww.fool] as @a[tag=!this] run \
  function ww:chat/_dm {type: 'rich_info', \
    message: '[{"selector":"@n[tag=this]","color":"white","bold":true},{"text":" 正在冒充 ","bold":false},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true}]' \
  }
tag @s remove this