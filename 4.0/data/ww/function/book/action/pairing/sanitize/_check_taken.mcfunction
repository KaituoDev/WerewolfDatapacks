# context: @s = player | villager
# inputs: {uuid}
# output: 1 = true, 0 = false

$execute unless entity @n[nbt={UUID:$(uuid)},tag=ww.lover] run return 0

$function ww:chat/_dm {type: 'rich_info', message: '[{"selector":"@n[nbt={UUID:$(uuid)}]","color":"red","bold":true},{"text":" 已经被抢走了, 请重选","color":"white","bold":false}]'}
$function ww:book/action/pairing/sanitize/_remove {uuid: $(uuid)}

return 1