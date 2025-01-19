## NOTE: this is ran during morning

tag @s add this
execute as @a[scores={localId=1..},tag=!this,tag=alive] if score @s localId = @p[tag=this] localVoteTrigger run tag @s add currentTarget
tag @s remove this

scoreboard players set %success var 0
execute if entity @a[tag=currentTarget] run scoreboard players set %success var 1

execute if score %success var matches 1 if entity @s[tag=!fool] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"白狼王 ","bold":true},{"selector":"@s","color":"gold"},{"text":" 發動自爆, 帶著 ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]","color":"white"},{"text":" 一起死","color":"white","bold":false}]
execute if score %success var matches 1 if entity @s[tag=fool] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"白狼王 ","bold":true},{"selector":"@s","color":"gold"},{"text":" 發動自爆, 但自己蠢到忘記帶著 ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]","color":"white"},{"text":" 一起死","color":"white","bold":false}]

execute if score %success var matches 1 if entity @s[tag=!fool] as @p[tag=currentTarget] run function ww:player/death
execute if score %success var matches 1 run function ww:player/dead

execute if score %success var matches 0 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"此玩家無法成為一起死的對象, 請重選"}]

tag @a remove currentTarget

execute if score %success var matches 1 run clear @s written_book{white_wolf:1b}
execute if score %success var matches 1 if entity @s[tag=!fool] run function ww:time/force_night