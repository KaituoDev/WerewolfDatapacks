# context: server
# inputs: {source, group}

$execute as @a[predicate=ww:narrator] run function ww:chat/_dm {type: 'rich_narrator', message: \
 '[{"selector":"@n[nbt={UUID:$(source)}]","color":"green","bold":true},{"text":" 將 ","color":"white","bold":false},{"selector":"@e[scores={ww.pairingGroup=$(group)}]","color":"green"},{"text":" 配為戀人","color":"white","bold":false}]' \
}