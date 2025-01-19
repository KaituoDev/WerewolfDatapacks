# context: @s = player | villager
# inputs: {uuid}

$execute unless entity @n[nbt={UUID:$(uuid)},predicate=ww:alive] run return run function ww:chat/_dm {type: 'rich_warn', \
  message: '[{"selector":"@n[nbt={UUID:$(uuid)}]","color":"red","bold":true},{"text":" 已死亡, 因次無法替你死","color":"white","bold":false}]' \
}

$execute if entity @s[tag=!ww.fool] if entity @n[nbt={UUID:$(uuid)},predicate=ww:alive] run \
  function ww:player/role/_set_state {path: 'scapegoat', value: $(uuid) }

$execute if entity @n[nbt={UUID:$(uuid)},predicate=ww:alive] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true},{"text":" 成為你的替死對象","color":"white","bold":false}]' \
}