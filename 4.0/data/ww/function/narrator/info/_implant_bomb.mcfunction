# context: server
# inputs: {source, victim}

$execute as @a[predicate=ww:narrator] run function ww:chat/_dm {type: 'rich_narrator', message: \
 '[{"selector":"@n[nbt={UUID:$(source)}]","color":"green","bold":true},{"text":" 嘗試將炸彈植入 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(victim)}]","color":"red","bold":true}]' \
}

$execute if entity @n[nbt={UUID:$(source)},tag=ww.fool] as @a[predicate=ww:narrator] run function ww:chat/_dm {type: 'rich_narrator', message: \
 '[{"text":" 但他是蠢的","color":"white","bold":false}]' \
}