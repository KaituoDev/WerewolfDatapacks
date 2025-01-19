scoreboard players reset * historyId
scoreboard players reset * historyOrder
scoreboard players reset * historyMax

scoreboard players set %current historyId 0
scoreboard players set %current historyOrder 0
scoreboard players set %current historyMax 0

data modify storage ww:game history.data set value '{"text":""}'
kill @e[type=marker,tag=history]