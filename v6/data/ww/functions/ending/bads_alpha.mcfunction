## CONTEXT: server side

scoreboard players add @a[tag=bads,tag=alive] wins 1

# title messages

data modify storage ww:game chat.top set value '{"text":"原初狼獲勝"}'
data modify storage ww:game chat.bottom set value '{"text":"狼群中出了叛徒"}'

execute as @a run function ww:chat/title

# chat messages

function ww:ending/init

tellraw @a [{"text":"原因: "},{"text":"原初狼獲勝\n","color":"yellow"},{"text":"勝者: ","color":"white"},{"selector":"@a[tag=alpha,tag=wolf,tag=alive]","color":"green","bold":true}]

execute as @a run function ww:chat/separator

function ww:game/end