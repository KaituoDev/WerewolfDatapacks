# context: @s = player | villager

execute if entity @s[tag=masochist] if function ww:ending/winner/masochist run return run function ww:game/end

tag @s add this
execute as @a run function ww:chat/_dm {type: 'rich_death', message: \
  '[ \
    {"selector":"@n[tag=this]","color":"red","bold":true}, \
    {"text":" 獲得最高票數 ","color":"white","bold":false}, \
    {"score":{"name":"%maxVoteCount","objective":"ww.system"},"color":"green","bold":true}, \
    {"text":" 被眾人處刑了","color":"white","bold":false} \
  ]' \
}
tag @s remove this

# santa passive
execute if entity @s[tag=santa] run function ww:role/santa/eliminated

function ww:player/dead
return 0