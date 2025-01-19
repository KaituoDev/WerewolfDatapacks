## CONTEXT: player

scoreboard players reset @s readHistory

tag @s add this
execute as @e[type=marker,tag=history,scores={historyId=1..,historyOrder=1..}] if score @s historyId = @p[tag=this] historyId run tag @s add history_line
tag @s remove this

scoreboard players set %cursor historyOrder 0
scoreboard players operation %cursor historyMax = @e[type=marker,tag=history_line,limit=1] historyMax

function ww:chat/separator
function ww:history/read/next
function ww:chat/separator

tag @e[type=marker,tag=history_line] remove history_line