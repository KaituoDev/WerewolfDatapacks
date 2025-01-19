# context: server
# inputs: {source, victim}

$execute as @a[predicate=ww:narrator] run function ww:chat/_dm {type: 'rich_narrator', message: \
 '[{"selector":"@n[nbt={UUID:$(source)}]","color":"green","bold":true},{"text":" 標記要偷竊 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(victim)}]","color":"red","bold":true},{"text":" 的禮物","color":"white","bold":false}]' \
}