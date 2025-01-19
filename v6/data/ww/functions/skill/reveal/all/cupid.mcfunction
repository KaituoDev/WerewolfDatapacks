## CONTEXT: a cupid and has paired players

tag @s add this

execute as @a[scores={id=1..}] if score @s cupidSource = @p[tag=this] id run tag @s add currentTarget

function ww:player/name/get
data modify storage ww:game history.cupid set from storage ww:game player.name
execute as @p[tag=currentTarget,tag=pairA] run function ww:player/name/get
data modify storage ww:game history.pairA set from storage ww:game player.name
execute as @p[tag=currentTarget,tag=pairB] run function ww:player/name/get
data modify storage ww:game history.pairB set from storage ww:game player.name

data modify storage ww:game history.data set value '[{"text":"邱比特 "},{"storage":"ww:game","nbt":"history.cupid","color":"#ffc0cb","bold":true},{"text":" 配對了 ","color":"white","bold":false},{"storage":"ww:game","nbt":"history.pairA","color":"red","bold":true},{"text":" 為攻方 ","color":"white","bold":false},{"storage":"ww:game","nbt":"history.pairB","color":"green","bold":true},{"text":" 為受方 ","color":"white","bold":false}]'

tellraw @a {"storage":"ww:game","nbt":"history.data","interpret":true}
function ww:history/record

tag @s remove this
tag @a remove currentTarget