# context: @s = player
# inputs: {origin, pos, name: config name}

$execute unless data storage ww:memory config.'$(name)' run return run function ww:chat/_dm {type:'error',message:'设定 $(name) 不存在'}
$execute store result score %toggle ww.var run data get storage ww:memory config.'$(name)'

# set the third line of text on the sign
$execute if score %toggle ww.var matches 0 at @n[nbt={UUID:$(origin)}] run return run \
  data modify block $(pos) front_text.messages[2] set value \
  '{"text":"已关闭","color":"red","clickEvent":{"action":"run_command","value":"function ww:config/board/action/_run {func: \\"ww:config/board/action/_toggle\\", args: {name: \\"$(name)\\", pos: \\"$(pos)\\"}}"}}'

$execute if score %toggle ww.var matches 1 at @n[nbt={UUID:$(origin)}] run return run \
  data modify block $(pos) front_text.messages[2] set value \
  '{"text":"已开启","color":"green","clickEvent":{"action":"run_command","value":"function ww:config/board/action/_run {func: \\"ww:config/board/action/_toggle\\", args: {name: \\"$(name)\\", pos: \\"$(pos)\\"}}"}}'