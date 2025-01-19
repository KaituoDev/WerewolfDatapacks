scoreboard players reset * morningVoteCount
scoreboard players set @a[scores={localId=1..},tag=alive] morningVoteCount 0

execute as @a[scores={localId=1..,morningVote=1..},tag=alive] run function ww:vote/morning/__count