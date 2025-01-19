# context: @s = player | villager, selections meet requirements
# inputs: {group}

$function ww:chat/_dm {type: 'rich_info', message: \
  '[{"text":"你將 ","color":"white","bold":false},{"selector":"@e[scores={ww.pairingGroup=$(group)}]","color":"green"},{"text":" 配為戀人","color":"white","bold":false}]' \
}

$execute if entity @s[tag=ww.fool] as @a run function ww:chat/_dm {type: 'rich_info', message: \
  '[{"text":"讓我們恭喜 ","color":"white","bold":false},{"selector":"@e[scores={ww.pairingGroup=$(group)}]","color":"green"},{"text":" 成為戀人","color":"white","bold":false}]' \
}

$execute as @a[scores={ww.pairingGroup=$(group)}] at @s run \
 function ww:chat/_dm {type: 'rich_info', message: \
  '[{"text":"你與 ","color":"white","bold":false},{"selector":"@e[scores={ww.pairingGroup=$(group)},distance=0.01..]","color":"green"},{"text":" 成為生命共同體"}]' \
}