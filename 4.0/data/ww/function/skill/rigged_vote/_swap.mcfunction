# context: @s = player | villager
# inputs: {player1, player2}

$scoreboard players operation %temp ww.var = @n[nbt={UUID:$(player1)}] ww.vote_summary

# player1 <-> player2
$scoreboard players operation @n[nbt={UUID:$(player1)}] ww.vote_summary = @n[nbt={UUID:$(player2)}] ww.vote_summary

# player2 <-> player1
$scoreboard players operation @n[nbt={UUID:$(player2)}] ww.vote_summary = %temp ww.var

# broadcast
$execute as @a run function ww:chat/_dm {type: 'rich_info', message: \
  '[{"selector":"@n[nbt={UUID:$(player1)}]","color":"green","bold":true},{"text":" 和 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(player2)}]","color":"green","bold":true},{"text":" 的票数被交换了","color":"white","bold":false}]' \ 
}