# context: @s = player | villager
# inputs: {uuid}

execute if entity @s[tag=ww.fool] run scoreboard players set @s ww.bomb 600

# narrator info
$data modify storage ww:temp narratorInfoInput set value {victim: $(uuid)}
data modify storage ww:temp narratorInfoInput.source set from entity @s UUID
function ww:narrator/info/_implant_bomb with storage ww:temp narratorInfoInput

execute if entity @s[tag=ww.fool] run return run function ww:chat/_dm {type: 'lmao', message: '炸弹黏到自己身上啰, 快说服大家跳过白天吧'}

$execute if score @n[nbt={UUID:$(uuid)}] ww.bomb matches 1.. run return run \
  function ww:chat/_dm {type: 'warn', message: '该玩家已经有炸弹了, 请选别人'} 

$scoreboard players set @n[nbt={UUID:$(uuid)}] ww.bomb 600
$execute as @p[nbt={UUID:$(uuid)}] run function ww:chat/_dm {type: 'warn', message: '你被植入炸弹了, 快用票人剑去传给别人, 或是请求大家跳过白天'} 

$execute if entity @n[nbt={UUID:$(uuid)},predicate=ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你将炸弹植入到 ","color":"white","bold":false},{"text":"隐形玩家","color":"green","bold":true}]' \
}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=!ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你将炸弹植入到 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true}]' \
}

data modify storage ww:temp setStateInput set value {path: 'implantBombSource'}
data modify storage ww:temp setStateInput.value set from entity @s UUID
$execute as @n[nbt={UUID:$(uuid)}] run function ww:player/role/_set_state with storage ww:temp setStateInput