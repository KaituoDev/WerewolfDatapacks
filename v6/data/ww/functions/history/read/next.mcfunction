## CONTEXT: running as player
## INPUT: %cursor historyOrder

scoreboard players add %cursor historyOrder 1

tag @s add this

execute as @e[type=marker,tag=history_line] if score @s historyOrder = %cursor historyOrder run tag @s add reading_line
tellraw @p[tag=this] [{"entity":"@e[type=marker,tag=reading_line,limit=1]","nbt":"CustomName","interpret":true}]

tag @s remove this

tag @e[type=marker,tag=reading_line] remove reading_line

execute if score %cursor historyOrder < %cursor historyMax run function ww:history/read/next