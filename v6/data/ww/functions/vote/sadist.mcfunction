tag @s add this
execute as @a[scores={localId=1..},tag=alive] if score @s localId = @p[tag=this] localVoteTrigger run tag @s add currentTarget
tag @s remove this

scoreboard players set %success var 0
execute if entity @a[tag=currentTarget,tag=masochist] run scoreboard players set %success var 1

execute if score %success var matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@p[tag=currentTarget]","color":"yellow","bold":true},{"text":" 被抖S教主查出是抖M教徒","color":"white","bold":false}]

# fool case: doesnt store the masochist's id
execute if score %success var matches 1 if entity @s[tag=!fool] run scoreboard players operation @s scapegoatTarget = @p[tag=currentTarget] id

execute if score %success var matches 0 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@p[tag=currentTarget]","color":"yellow","bold":true},{"text":" 不是抖M教徒, 再接再厲","color":"white","bold":false}]

tag @a remove currentTarget

clear @s written_book{sadist:1b}