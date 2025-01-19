# context: @s = player
# inputs: {origin, pos, name: config name, min: number}

$execute unless data storage ww:memory config.'$(name)' run return run function ww:chat/_dm {type:'error',message:'設定 $(name) 不存在'}
$execute store result score %count ww.var run data get storage ww:memory config.'$(name)'

# set the third line of text on the sign
$execute if score %count ww.var matches 0 at @n[nbt={UUID:$(origin)}] run return run \
  data modify block $(pos) front_text.messages[2] set value \
  '{"text":"已關閉","color":"red","clickEvent":{"action":"run_command","value":"function ww:config/board/action/_run {func: \\"ww:config/board/action/_range_min\\", args: {name: \\"$(name)\\", pos: \\"$(pos)\\", min: $(min)}}"}}'

$execute if score %count ww.var matches 1.. at @n[nbt={UUID:$(origin)}] run return run \
  data modify block $(pos) front_text.messages[2] set value \
  '{"score":{"name":"%count","objective":"ww.var"},"bold":true,"color":"green","clickEvent":{"action":"run_command","value":"function ww:config/board/action/_run {func: \\"ww:config/board/action/_range_min\\", args: {name: \\"$(name)\\", pos: \\"$(pos)\\", min: $(min)}}"}}'