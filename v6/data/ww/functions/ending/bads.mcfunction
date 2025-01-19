## CONTEXT: server side

scoreboard players add @a[tag=bads,tag=alive] wins 1

# title messages

data modify storage ww:game chat.top set value '{"text":"狼人陣營獲勝"}'
data modify storage ww:game chat.bottom set value '{"text":"好人全員陣亡"}'
execute if score %alive_goods var matches 1 run data modify storage ww:game chat.bottom set value '{"text":"數狼一好人局面"}'

execute as @a run function ww:chat/title

# chat messages

function ww:ending/init

execute unless score %alive_goods var matches 1 run tellraw @a [{"text":"原因: "},{"text":"好人全員陣亡\n","color":"yellow"},{"text":"勝者: ","color":"white"},{"selector":"@a[tag=bads,tag=alive]","color":"green","bold":true}]
execute if score %alive_goods var matches 1 run tellraw @a [{"text":"原因: "},{"text":"數狼一好人局面\n","color":"yellow"},{"text":"勝者: ","color":"white"},{"selector":"@a[tag=bads,tag=alive]","color":"green","bold":true}]

execute as @a run function ww:chat/separator

function ww:game/end