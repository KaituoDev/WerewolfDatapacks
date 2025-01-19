# context: @s = player | villager
# inputs: {name}

data modify storage ww:temp scrolls set value { \
  "morph": "化貓", \
  "tree": "岩遁", \
  "crowd": "人遁", \
  "smoke": "霧遁", \
  "mini": "蟻遁", \
  "random": "隨機" \
}

$function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"已選定 ","color":"white","bold":false},{"nbt":"scrolls.$(name)","storage":"ww:temp","color":"green","bold":true},{"text":" 卷軸","color":"white","bold":false}]' \
}