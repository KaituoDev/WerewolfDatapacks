## CONTEXT: no players alive

# title messages

data modify storage ww:game chat.top set value '{"text":"無人存活"}'
data modify storage ww:game chat.bottom set value '{"text":"種族大滅絕"}'

execute as @a run function ww:chat/title

# chat messages

function ww:ending/init

tellraw @a [{"text":"原因: "},{"text":"無人存活\n","color":"yellow"},{"text":"敗者: ","color":"white"},{"selector":"@a[predicate=!ww:god]","color":"gray","bold":true}]

execute as @a run function ww:chat/separator

function ww:game/end