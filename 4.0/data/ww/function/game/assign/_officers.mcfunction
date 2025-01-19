# context: server
# inputs: {count}

$tag @e[predicate=ww:player,limit=$(count),sort=random] add ww.officer
execute as @e[tag=ww.officer] run function ww:player/_set_state {name: 'playerOfficer', value: 1}
team join ww.officers @e[tag=ww.officer]

# broadcast
execute as @a run function ww:chat/_dm {type: 'rich_info', message: \
  '[{"selector":"@e[tag=ww.officer]","color":"green","bold":true},{"text":" 已被选为警长","color":"white","bold":false}]' \
}