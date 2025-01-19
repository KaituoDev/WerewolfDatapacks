tag @s add this

execute as @a[scores={id=1..}] if score @s id = @p[tag=this] officerVote run scoreboard players add @s officerVoteCount 1

tag @s remove this