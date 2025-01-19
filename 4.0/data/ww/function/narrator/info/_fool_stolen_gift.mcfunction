# context: server
# inputs: {source, victim}

$execute as @a[predicate=ww:narrator] run function ww:chat/_dm {type: 'rich_narrator', message: \
 '[{"selector":"@n[nbt={UUID:$(source)}]","color":"green","bold":true},{"text":" 拿到了 ","color":"white","bold":false},{"selector":"@n[scores={ww.globalId=$(victim)}]","color":"red","bold":true},{"text":" 犯蠢送的礼物，","color":"white","bold":false}]' \
}