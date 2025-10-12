# context: @s = player
# inputs: {uuid, campaign}

execute if entity @s[tag=ww.fool] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"未能击毙目标","color":"white","bold":false}]' \
}

execute unless entity @s[tag=ww.fool] \
 run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"未能击毙目标","color":"white","bold":false}]' \
}

$execute unless entity @s[tag=ww.fool] \ 
  as @n[nbt={UUID:$(uuid)},tag=!$(campaign)] if function ww:player/flag/is_immune \
  run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你未能击毙目标","color":"white","bold":false}]' \
}

$execute unless entity @s[tag=ww.fool] \ 
  as @n[nbt={UUID:$(uuid)},tag=!$(campaign)] unless function ww:player/flag/is_immune \
  run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你击毙了 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"red","bold":true}]' \
}

$execute unless entity @s[tag=ww.fool] \ 
  as @n[nbt={UUID:$(uuid)},tag=!$(campaign)] unless function ww:player/flag/is_immune \
  run function ww:player/death/snipe

effect give @s glowing 10 0 true
effect give @s slowness 10 1 true
execute at @s run playsound minecraft:entity.wind_charge.wind_burst player @a