## Lovers Ending: pair and cupid all lived
## CONTEXT: @p[tag=currentCupid] = cupid
## CONTEXT: %alive var, only 1 pairA and 1 pairB

scoreboard players add @p[tag=currentCupid] wins 1
scoreboard players add @p[tag=alive,tag=pairA] wins 1
scoreboard players add @p[tag=alive,tag=pairB] wins 1

# title messages

data modify storage ww:game chat.top set value '{"text":"戀人組合全員獲勝"}'
data modify storage ww:game chat.bottom set value '{"text":"僅有戀人倖存"}'

execute as @a run function ww:chat/title

# chat messages

function ww:ending/init

tellraw @a [{"text":"原因: "},{"text":"僅有戀人倖存\n","color":"yellow"},{"text":"勝者: ","color":"white"}]
tellraw @a [{"text":"邱比特: "},{"selector":"@p[tag=currentCupid]","color":"#ffc0cb","bold":true}," ",{"text":"戀人攻: ","color":"white","bold":false},{"selector":"@p[tag=alive,tag=pairA]","color":"red","bold":true}," ",{"text":"戀人受: ","color":"white","bold":false},{"selector":"@p[tag=alive,tag=pairB]","color":"green","bold":true}]

execute as @a run function ww:chat/separator

tag @a remove currentCupid
function ww:game/end