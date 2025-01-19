# context: @s = player | villager
# inputs: {name}

data modify storage ww:temp scrolls set value { \
  "morph": "化猫", \
  "tree": "岩遁", \
  "crowd": "人遁", \
  "smoke": "雾遁", \
  "mini": "蚁遁", \
  "random": "随机" \
}

$function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"已选定 ","color":"white","bold":false},{"nbt":"scrolls.$(name)","storage":"ww:temp","color":"green","bold":true},{"text":" 卷轴","color":"white","bold":false}]' \
}