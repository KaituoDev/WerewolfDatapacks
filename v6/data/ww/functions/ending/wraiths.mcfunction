## CONTEXT: server side

scoreboard players add @a[tag=wraiths,tag=alive] wins 1

# title messages

data modify storage ww:game chat.top set value '[{"text":"靈","color":"red","bold":true,"obfuscated":true},{"text":" 怨靈陣營獲勝 ","color":"white","obfuscated":false,"bold":false},{"text":"靈","color":"red","bold":true,"obfuscated":true}]'
data modify storage ww:game chat.bottom set value '{"text":"尚有存活的怨靈"}'

execute as @a run function ww:chat/title

# chat messages

function ww:ending/init

tellraw @a [{"text":"原因: "},{"text":"狼人陣營全員陣亡, 然而尚有存活的怨靈\n","color":"yellow"},{"text":"勝者: ","color":"white"},{"selector":"@a[tag=wraiths,tag=alive]","color":"green","bold":true}]

execute as @a run function ww:chat/separator

function ww:game/end