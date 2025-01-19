tag @s add this
execute as @a[scores={id=1..}] if score @s id = @p[tag=this] voteTrigger run tag @s add currentTarget
tag @s remove this

execute store success score %success var if score @s officerVote = @s voteTrigger
scoreboard players operation @s officerVote = @s voteTrigger
function ww:session/officer/count

execute if score %success var matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@s","bold":true},{"text":" 投給了 ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]","bold":true,"color":"green"}]

execute if score %success var matches 0 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"","bold":false},{"text":" 你已經將票投給 ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]","bold":true,"color":"green"}]

tag @a remove currentTarget