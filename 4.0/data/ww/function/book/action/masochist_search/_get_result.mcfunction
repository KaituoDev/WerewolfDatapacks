# context: @s = player | villager
# inputs: {uuid}
# output: ww:output playerResult

data modify storage ww:output playerResult set value {text: '不是', color: 'red'}
$execute if entity @n[nbt={UUID:$(uuid)},tag=masochist] run \
  data modify storage ww:output playerResult set value {text: '是', color: 'green'}

$execute if entity @n[nbt={UUID:$(uuid)},tag=masochist] run \
  function ww:skill/masochist_search/_found {uuid: $(uuid)}