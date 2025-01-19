## CONTEXT: @e[type=marker,tag=summoned,limit=1]

data modify entity @s CustomName set from storage ww:game history.data
execute store result score @s historyId run scoreboard players get %current historyId
execute store result score @s historyOrder run scoreboard players add %current historyOrder 1
scoreboard players add %current historyMax 1

tag @s remove summoned