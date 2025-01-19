# context: @s = player | villager
# inputs: {uuid}
# output: ww:output playerRole

data remove storage ww:output playerRole

$data modify storage ww:output playerRole set from storage ww:memory playerRole.'$(uuid)'

$execute if entity @s[tag=ww.fool] if entity @n[nbt={UUID:$(uuid)},tag=bads] run \
  data modify storage ww:output playerRole.campaign set value {id: 'goods', color: '#50d300', name: '人類陣營'}

$execute if entity @s[tag=ww.fool] if entity @n[nbt={UUID:$(uuid)},tag=goods] run \
  data modify storage ww:output playerRole.campaign set value {id: 'spirits', color: 'dark_red', name: '怨靈陣營'}

$execute if entity @s[tag=ww.fool] if entity @n[nbt={UUID:$(uuid)},tag=spirits] run \
  data modify storage ww:output playerRole.campaign set value {id: 'bads', color: 'red', name: '狼人陣營'}

$execute if entity @n[nbt={UUID:$(uuid)},tag=snow_wolf] run \
  data modify storage ww:output playerRole.campaign set value {id: 'goods', color: '#50d300', name: '人類陣營'}

$execute if entity @n[nbt={UUID:$(uuid)},tag=bewitcher] run \
  function ww:player/role/_set_state {path: 'bewitched', value: 1}
$execute as @n[nbt={UUID:$(uuid)},predicate=ww:alive,tag=spirits] run function ww:queue/_add {task: 'player/death/prophecy'}
$execute if entity @n[nbt={UUID:$(uuid)},predicate=ww:alive,tag=spirits] run function ww:player/increment_kill


# funny message to show many times this spirit has been exorcised
$scoreboard players add @n[nbt={UUID:$(uuid)},tag=spirits] ww.spirits.exorcised 1

$execute if score @n[nbt={UUID:$(uuid)}] ww.spirits.exorcised matches 2.. as @a run function ww:chat/_dm { \
  type: 'rich_info', \
  message: '[{"selector":"@n[nbt={UUID:$(uuid)}]","color":"red","bold":true},{"text":" 又被查驗了，表示心很累x","color":"white","bold":false},{"score":{"name":"@n[nbt={UUID:$(uuid)}]","objective":"ww.spirits.exorcised"},"color":"green","bold":true}]' \
}

return run execute if data storage ww:output playerRole