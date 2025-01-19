# context: @s = player | villager
# inputs: {uuid, campaign}

tag @s add this_challenger
$execute as @a run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"selector":"@n[tag=this_challenger]","color":"yellow","bold":true},{"text":" 向 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"red","bold":true},{"text":" 發起決鬥","color":"white","bold":false}]' \
}
tag @s remove this_challenger

# increment kill
$execute if entity @s[tag=!ww.fool] if entity @n[nbt={UUID:$(uuid)},tag=!$(campaign)] run \
  function ww:player/increment_kill

$execute if entity @s[tag=ww.fool] if entity @n[nbt={UUID:$(uuid)},tag=$(campaign)] run \
  function ww:player/increment_kill

# kill opponent or self based on campaigns
$execute if entity @s[tag=!ww.fool] as @n[nbt={UUID:$(uuid)},tag=!$(campaign)] run return run \
  function ww:player/death/challenge

$execute if entity @s[tag=!ww.fool] if entity @n[nbt={UUID:$(uuid)},tag=$(campaign)] run return run \
  function ww:player/death/challenge

$execute if entity @s[tag=ww.fool] as @n[nbt={UUID:$(uuid)},tag=$(campaign)] run return run \
  function ww:player/death/challenge

$execute if entity @s[tag=ww.fool] if entity @n[nbt={UUID:$(uuid)},tag=!$(campaign)] run return run \
  function ww:player/death/challenge