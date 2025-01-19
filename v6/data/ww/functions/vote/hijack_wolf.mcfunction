## Store the corresponding global id of the localVoteTrigger id player

tag @s add this
execute as @a[scores={localId=1..},tag=!this,tag=alive] if score @s localId = @p[tag=this] localVoteTrigger run tag @s add currentTarget
tag @s remove this

execute store success score %success var if entity @a[tag=currentTarget]

execute if score %success var matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"預言家查到你時將會顯示 ","bold":true},{"selector":"@p[tag=currentTarget]","color":"green"},{"text":" 而不是你的名字","color":"white","bold":false}]

execute if score %success var matches 1 run scoreboard players operation @s hijack = @p[tag=currentTarget] id

execute if score %success var matches 0 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"不得選自己或此玩家不存在, 請重選"}]

tag @a remove currentTarget

execute if score %success var matches 1 run clear @s written_book{hijack_wolf:1b}