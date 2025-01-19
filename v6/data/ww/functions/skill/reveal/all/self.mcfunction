## CONTEXT: a player with an id score

function ww:role/name
function ww:player/name/get

data modify storage ww:game history.temp set value '{"text":""}'
execute if entity @s[tag=inherited] run data modify storage ww:game history.temp set value '{"text":" (繼承自他人)","color":"white","bold":false}'

data modify storage ww:game history.data set value '[{"storage":"ww:game","nbt":"player.name","interpret":false,"color":"white","bold":true},{"text":" 是 ","color":"white","bold":false},{"storage":"ww:game","nbt":"role.color","interpret":true},{"storage":"ww:game","nbt":"role.fool","interpret":true},{"storage":"ww:game","nbt":"role.name","interpret":true},{"storage":"ww:game","nbt":"history.temp","interpret":true}]'

tellraw @a {"storage":"ww:game","nbt":"history.data","interpret":true}
function ww:history/record