## @p[tag=this] or @s is the voter
## %finalizing var comes from ww:vote/morning/finalize

# %success var means whether the current voter is a masochist

scoreboard players set %success var 1
execute if score %finalizing var matches 1 if entity @s[tag=masochist] run scoreboard players set %success var 0
execute if score %success var matches 0 if entity @s[tag=masochist,tag=!officer] run scoreboard players add %invalid_votes var 1
execute if score %success var matches 0 if entity @s[tag=masochist,tag=officer] run scoreboard players add %invalid_votes var 2
execute if entity @s[tag=!officer] run scoreboard players add %total_votes var 1
execute if entity @s[tag=officer] run scoreboard players add %total_votes var 2

tag @s add this

execute if score %success var matches 1 as @a[scores={localId=1..}] if score @s localId = @p[tag=this,tag=!officer] morningVote run scoreboard players add @s morningVoteCount 1
execute if score %success var matches 1 as @a[scores={localId=1..}] if score @s localId = @p[tag=this,tag=officer] morningVote run scoreboard players add @s morningVoteCount 2

tag @s remove this