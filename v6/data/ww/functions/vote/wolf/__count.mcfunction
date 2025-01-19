tag @s add this

execute as @a[scores={localId=1..}] if score @s localId = @p[tag=this] wolfVote run scoreboard players add @s wolfVoteCount 1

tag @s remove this