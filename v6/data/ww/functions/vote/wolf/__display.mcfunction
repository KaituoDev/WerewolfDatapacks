## CONTEXT: @s = player with more than 1 wolfVoteCount 

tellraw @a[scores={onWolfList=1..}] [{"selector":"@s","color":"white","bold":true}," : ",{"score":{"name":"@s","objective":"wolfVoteCount"},"color":"red","bold":true},{"text":" 票","color":"white","bold":false}]