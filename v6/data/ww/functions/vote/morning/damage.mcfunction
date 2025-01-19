## Context: @p[tag=origin] is the origin, @s is the victim

data modify storage ww:game DISPLAY.temp set value '{"text":" 票了 ","color":"white","bold":false}'
execute if score @p[tag=origin] morningVote matches 1.. run data modify storage ww:game DISPLAY.temp set value '{"text":" 改票 ","color":"white","bold":false}'

execute unless score @p[tag=origin] morningVote = @s localId run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@p[tag=origin]","bold":true,"color":"green"},{"storage":"ww:game","nbt":"DISPLAY.temp","interpret":true},{"selector":"@s","color":"red","bold":true}]

scoreboard players operation @p[tag=origin] morningVote = @s localId
function ww:vote/morning/count