tellraw @a[scores={onWolfList=1..}] [{"text":"\n目前狼人們的投票情況:\n"}]

execute as @a[scores={wolfVoteCount=1..}] run function ww:vote/wolf/__display

tellraw @a[scores={onWolfList=1..}] ""