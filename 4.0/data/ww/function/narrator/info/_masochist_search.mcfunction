# context: server
# inputs: {source, target, result, color}

$execute as @a[predicate=ww:narrator] run function ww:chat/_dm {type: 'rich_narrator', message: \
 '[{"selector":"@n[nbt={UUID:$(source)}]","color":"green","bold":true}, \
  {"text":" 查了 ","color":"white","bold":false}, \
  {"text":"$(target)","color":"white", "bold": true}, \
  {"text":" $(result)", "color": "$(color)", "bold": true}, \
  {"text":" 抖M", "color":"white", "bold": false} \
 ]' \
}