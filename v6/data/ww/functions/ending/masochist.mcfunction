## CONTEXT: a masochist player

scoreboard players add @s wins 1

# title messages

tag @s add this
data modify storage ww:game chat.top set value '{"text":"抖M獲勝"}'
data modify storage ww:game chat.bottom set value '[{"selector":"@p[tag=this]"},{"text":" 是抖M啊"}]'

execute as @a run function ww:chat/title

tag @s remove this

# chat messages

function ww:ending/init

tellraw @a [{"text":"原因: "},{"text":"抖M教徒獲得最高票\n","color":"yellow"},{"text":"勝者: ","color":"white"},{"selector":"@s","color":"green","bold":true}]

execute as @a run function ww:chat/separator

function ww:game/end