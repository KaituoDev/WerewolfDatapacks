scoreboard players reset * wolfVoteCount
scoreboard players set @a[scores={localId=1..},tag=alive] wolfVoteCount 0

execute as @a[scores={localId=1..},tag=alive] run function ww:vote/wolf/__count