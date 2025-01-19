## CONTEXT: 1 team remains
## INPUT: %latestTeam var

# title messages

data modify storage ww:game chat.top set value '[{"text":"第 "},{"score":{"name":"%latestTeam","objective":"var"},"color":"green","bold":true},{"text":" 組獲勝","color":"white","bold":false}]'
data modify storage ww:game chat.bottom set value '{"text":"場上僅剩一組玩家"}'

execute as @a run function ww:chat/title

execute as @a[scores={team=1..},tag=alive] if score @s team = %latestTeam var run tag @s add winner
scoreboard players add @a[tag=winner] wins 1

# chat messages

function ww:ending/init

tellraw @a [{"text":"原因: "},{"text":"場上僅剩一組玩家\n","color":"yellow"},{"text":"勝者: ","color":"white"},{"selector":"@a[tag=winner]","color":"green","bold":true}]

execute as @a run function ww:chat/separator

tag @a remove winner
function ww:game/end