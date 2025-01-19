# context: @s = player
# inputs: {source, victim}

$execute if score @n[nbt={UUID:$(victim)}] ww.bomb matches 1.. run return run \
  function ww:chat/_dm {type: 'info', message: '该玩家已经有炸弹了, 传炸弹失败'} 

$function ww:narrator/info/_pass_bomb {source: $(source), victim: $(victim)}

$scoreboard players operation @n[nbt={UUID:$(victim)}] ww.bomb = @n[nbt={UUID:$(source)}] ww.bomb
$scoreboard players reset @n[nbt={UUID:$(source)}] ww.bomb

$execute as @n[nbt={UUID:$(source)}] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你成功将炸弹传给 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(victim)}]","color":"yellow","bold":true}]' \
}

$execute as @n[nbt={UUID:$(victim)}] run function ww:chat/_dm {type: 'rich_warn', \
  message: '[{"text":"你被 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(source)}]","color":"red","bold":true},{"text":" 传到了炸弹","color":"white","bold":false}]' \
}