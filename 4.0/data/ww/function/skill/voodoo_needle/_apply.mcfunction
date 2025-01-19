# context: @s = player
# inputs: {uuid}

$data modify storage ww:temp addStackInput set value {uuid: $(uuid)}
data modify storage ww:temp addStackInput.source set from entity @s UUID
execute if entity @s[tag=ww.fool] run data modify storage ww:temp addStackInput.uuid set from entity @s UUID

function ww:skill/voodoo_needle/_add_stack with storage ww:temp addStackInput

$execute if entity @n[nbt={UUID:$(uuid)},predicate=ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你对 ","color":"white","bold":false},{"text":"隐形玩家","color":"green","bold":true},{"text":" 施加了一层诅咒","color":"white","bold":false}]' \
}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=!ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你对 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true},{"text":" 施加了一层诅咒","color":"white","bold":false}]' \
}