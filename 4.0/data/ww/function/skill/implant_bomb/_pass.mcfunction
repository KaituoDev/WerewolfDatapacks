# context: @s = player
# inputs: {source, victim}

$execute if score @n[nbt={UUID:$(victim)}] ww.bomb matches 1.. run return run \
  function ww:chat/_dm {type: 'info', message: '該玩家已經有炸彈了, 傳炸彈失敗'} 

$function ww:narrator/info/_pass_bomb {source: $(source), victim: $(victim)}

$scoreboard players operation @n[nbt={UUID:$(victim)}] ww.bomb = @n[nbt={UUID:$(source)}] ww.bomb
$scoreboard players reset @n[nbt={UUID:$(source)}] ww.bomb

$execute as @n[nbt={UUID:$(source)}] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你成功將炸彈傳給 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(victim)}]","color":"yellow","bold":true}]' \
}

$execute as @n[nbt={UUID:$(victim)}] run function ww:chat/_dm {type: 'rich_warn', \
  message: '[{"text":"你被 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(source)}]","color":"red","bold":true},{"text":" 傳到了炸彈","color":"white","bold":false}]' \
}