## store selected player's id into ninja's scapegoatTarget
## allow fool ninja to store the id, the "check" will apply ninjaWrong automatically

tag @s add this
execute as @a[scores={localId=1..},tag=!this] if score @s localId = @p[tag=this] localVoteTrigger run tag @s add currentTarget
tag @s remove this

scoreboard players operation @s scapegoatTarget = @p[tag=currentTarget] id

execute if entity @a[tag=currentTarget] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你打算讓 ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]","color":"green","bold":true},{"text":" 代替你死","color":"white","bold":false}]

execute unless entity @a[tag=currentTarget] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"此玩家不符合條件, 請重選"}]

execute if entity @a[tag=currentTarget] run clear @s written_book{ninja_scapegoat:1b}

tag @a remove currentTarget