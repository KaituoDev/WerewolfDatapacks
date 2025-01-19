scoreboard players add %current historyId 1
scoreboard players set %current historyOrder 0
scoreboard players set %current historyMax 0

tag @e[type=marker,tag=recording] remove recording
data modify storage ww:game history.data set value '{"text":""}'