# context: server
# inputs: {source, victim, campaign, result}

$execute as @a[predicate=ww:narrator] run function ww:chat/_dm {type: 'rich_narrator', message: \
 '[{"selector":"@n[nbt={UUID:$(source)}]","color":"green","bold":true},{"text":" 發現 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(victim)}]","color":"red","bold":true},{"text":" $(result)$(campaign)","color":"white","bold":false}]' \
}