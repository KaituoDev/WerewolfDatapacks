# context: server
# inputs: {source, group}

$execute as @a[predicate=ww:narrator] run function ww:chat/_dm {type: 'rich_narrator', message: \
 '[{"selector":"@n[nbt={UUID:$(source)}]","color":"green","bold":true},{"text":" 将 ","color":"white","bold":false},{"selector":"@e[scores={ww.pairingGroup=$(group)}]","color":"green"},{"text":" 配为恋人","color":"white","bold":false}]' \
}