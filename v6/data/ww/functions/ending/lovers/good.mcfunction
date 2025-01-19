## Lovers Ending where the pair lives but cupid didn't
## CONTEXT: %alive var, only 1 pairA and 1 pairB

tag @p[tag=alive,tag=pairA] add winner
tag @p[tag=alive,tag=pairB] add winner

scoreboard players add @a[tag=winner] wins 1

# title messages

data modify storage ww:game chat.top set value '{"text":"戀人組合獲勝"}'
data modify storage ww:game chat.bottom set value '{"text":"僅有戀人倖存"}'

execute as @a run function ww:chat/title

# chat messages

function ww:ending/init

tellraw @a [{"text":"原因: "},{"text":"僅有戀人倖存\n","color":"yellow"},{"text":"勝者: ","color":"white"}]
tellraw @a [{"text":"戀人攻: ","color":"white","bold":false},{"selector":"@p[tag=alive,tag=pairA]","color":"red","bold":true}," ",{"text":"戀人受: ","color":"white","bold":false},{"selector":"@p[tag=alive,tag=pairB]","color":"green","bold":true}]

execute as @a run function ww:chat/separator

tag @a remove winner
function ww:game/end