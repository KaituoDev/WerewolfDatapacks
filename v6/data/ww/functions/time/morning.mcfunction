clear @a
effect clear @a
tag @e[tag=perm_invis] remove perm_invis

team modify player nametagVisibility always
team modify officer nametagVisibility always
team modify player seeFriendlyInvisibles false

function ww:reset/values/morning
function ww:reset/entities/temporary

scoreboard players set %morning system 1
scoreboard players set %swapped var 1
scoreboard players add %day system 1

execute if predicate ww:mode/riot run function ww:time/riot/morning
execute if predicate ww:mode/debate run function ww:time/debate/morning

# morning vote book is in equip_all
schedule function ww:role/equip_all 1s

data modify storage ww:game chat.top set value '{"text":"太陽已升起","bold":false}'
data modify storage ww:game chat.bottom set value '[{"text":"第 ","color":"white","bold":false},{"score":{"name":"%day","objective":"system"},"color":"green","bold":true},{"text":" 天","color":"white","bold":false}]'
execute as @a run function ww:chat/title
execute as @a run function ww:chat/separator
tellraw @a [{"text":"第 ","color":"white","bold":false},{"score":{"name":"%day","objective":"system"},"color":"green","bold":true},{"text":" 天白天","color":"white","bold":false}]

function ww:time/display

function ww:vote/morning/count
execute if score %day system matches 2.. run scoreboard objectives setdisplay sidebar morningVoteCount
execute if score %day system matches 2.. run scoreboard objectives setdisplay list morningVoteCount

time set noon