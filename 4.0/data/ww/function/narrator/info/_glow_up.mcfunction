# context: server
# inputs: {source}

$execute as @a[predicate=ww:narrator] run function ww:chat/_dm {type: 'rich_narrator', message: \
 '[{"selector":"@n[nbt={UUID:$(source)}]","color":"green","bold":true},{"text":" 发动了全体显形","color":"white","bold":false}]' \
}