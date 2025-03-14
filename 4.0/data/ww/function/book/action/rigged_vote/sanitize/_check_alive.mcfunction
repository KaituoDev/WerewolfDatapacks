# context: @s = player | villager
# inputs: {uuid}
# output: 1 = true, 0 = false

$execute if entity @n[nbt={UUID:$(uuid)},tag=ww.alive] run return 1

$function ww:chat/_dm {type: 'rich_info', message: '[{"selector":"@n[nbt={UUID:$(uuid)}]","color":"red","bold":true},{"text":" 已死亡, 请重选","color":"white","bold":false}]'}
$function ww:book/action/rigged_vote/sanitize/_remove {uuid: $(uuid)}

return 0