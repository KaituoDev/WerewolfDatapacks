scoreboard players set %morning system 0
scoreboard players set %swapped var 1

team modify player nametagVisibility never
team modify officer nametagVisibility never
team modify player seeFriendlyInvisibles false

execute if predicate ww:mode/riot run function ww:time/riot/night
execute if predicate ww:mode/debate run function ww:time/debate/night

schedule function ww:role/equip_all 1s

data modify storage ww:game chat.top set value '{"text":"夜幕已降臨","bold":false}'
data modify storage ww:game chat.bottom set value '[{"text":"第 ","color":"white","bold":false},{"score":{"name":"%day","objective":"system"},"color":"green","bold":true},{"text":" 天","color":"white","bold":false}]'
execute as @a run function ww:chat/title
execute as @a run function ww:chat/separator
tellraw @a [{"text":"第 ","color":"white","bold":false},{"score":{"name":"%day","objective":"system"},"color":"green","bold":true},{"text":" 天夜晚","color":"white","bold":false}]

function ww:time/display

time set midnight