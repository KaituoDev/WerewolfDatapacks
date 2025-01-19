# context: @s = player

tag @s add this_victim
execute as @a run \
  function ww:chat/_dm {type: 'rich_death', message: \
    '[{"selector":"@n[tag=this_victim]","color":"red","bold":true},{"text":" 已死亡","color":"white","bold":false}]' \
  }
tag @s remove this_victim