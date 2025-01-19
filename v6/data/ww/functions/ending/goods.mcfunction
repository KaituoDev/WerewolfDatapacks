## CONTEXT: server side

scoreboard players add @a[tag=goods,tag=alive] wins 1

# title messages

data modify storage ww:game chat.top set value '{"text":"好人陣營獲勝"}'
data modify storage ww:game chat.bottom set value '{"text":"狼人陣營全員陣亡"}'

execute as @a run function ww:chat/title

# chat messages

function ww:ending/init

tellraw @a [{"text":"原因: "},{"text":"狼人陣營全員陣亡\n","color":"yellow"},{"text":"勝者: ","color":"white"},{"selector":"@a[tag=goods,tag=alive]","color":"green","bold":true}]

execute as @a run function ww:chat/separator

function ww:game/end