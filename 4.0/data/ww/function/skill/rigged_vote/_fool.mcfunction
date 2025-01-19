# context: @s = player | villager
# inputs: {player1, player2}

# steal the votes
$scoreboard players operation @s ww.vote_summary += @n[nbt={UUID:$(player1)}] ww.vote_summary
$scoreboard players operation @s ww.vote_summary += @n[nbt={UUID:$(player2)}] ww.vote_summary

# clear the votes for player 1 and player 2
$scoreboard players reset @n[nbt={UUID:$(player1)}] ww.vote_summary
$scoreboard players reset @n[nbt={UUID:$(player2)}] ww.vote_summary

# update maxVoteCount
scoreboard players operation %maxVoteCount ww.system > @s ww.vote_summary

# broadcast
tag @s add this_rigger
$execute as @a run function ww:chat/_dm {type: 'rich_info', message: \
  '[{"selector":"@n[tag=this_rigger]","color":"red","bold":true},{"text":" 偷走了 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(player1)}]","color":"green","bold":true},{"text":" 和 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(player2)}]","color":"green","bold":true},{"text":" 的票仓","color":"white","bold":false}]' \ 
}
tag @s remove this_rigger