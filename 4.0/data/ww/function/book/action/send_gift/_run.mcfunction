# context: @s = player
# inputs: {uuid, player: string}

$function ww:chat/_dm { \
  type: 'rich_info', \
  message: '[{"text":"你送了禮物給 ","color":"white","bold":false},{"text":"$(player)","color":"green","bold":true}]', \
}

$execute if entity @s[tag=ww.fool] as @n[nbt={UUID:$(uuid)}] run function ww:skill/christmas_gift_coal/receive
$execute if entity @s[tag=!ww.fool] as @n[nbt={UUID:$(uuid)}] run function ww:skill/christmas_gift/receive