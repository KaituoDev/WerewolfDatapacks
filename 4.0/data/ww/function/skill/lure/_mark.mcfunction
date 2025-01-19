# context: @s = player
# inputs: {uuid}

# only human players will need this, as AI autopilots are summoned when night begins
$scoreboard players operation @a[predicate=ww:alive,tag=bads] ww.autopilotTarget = @n[nbt={UUID:$(uuid)}] ww.globalId

$execute as @e[tag=ww.killer_ai] run data modify entity @s AngryAt set value $(uuid)
$execute as @e[tag=ww.mount] run data modify entity @s AngryAt set value $(uuid)


$execute if entity @n[nbt={UUID:$(uuid)},predicate=ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你使狼群目標轉移至 ","color":"white","bold":false},{"text":"隱形玩家","color":"green","bold":true}]' \
}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=!ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你使狼群目標轉移至 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true}]' \
}