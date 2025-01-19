# context: server
# inputs: {count}

$tag @e[predicate=ww:alive,tag=masochist,scores={ww.vote_summary=$(count)}] add masochistWinner
execute if entity @e[tag=masochistWinner] if function ww:ending/winner/masochists run return run function ww:game/end
tag @e[tag=masochistWinner] remove masochistWinner

$execute as @a run function ww:chat/_dm {type: 'rich_death', message: \
  '[ \
    {"selector":"@e[predicate=ww:alive,scores={ww.vote_summary=$(count)}]","color":"red","bold":true}, \
    {"text":" 獲得最高票數 ","color":"white","bold":false}, \
    {"score":{"name":"%maxVoteCount","objective":"ww.system"},"color":"green","bold":true}, \
    {"text":" 被眾人處刑了","color":"white","bold":false} \
  ]' \
}

# santa passive
$execute as @e[predicate=ww:alive,scores={ww.vote_summary=$(count)},tag=santa] run function ww:role/santa/eliminated

$execute as @e[predicate=ww:alive,scores={ww.vote_summary=$(count)}] run function ww:player/dead
return 0