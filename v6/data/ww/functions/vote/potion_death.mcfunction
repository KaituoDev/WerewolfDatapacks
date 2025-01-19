tag @s add this
execute as @a[scores={localId=1..},tag=!this] if score @s localId = @p[tag=this] localVoteTrigger run tag @s add currentTarget
tag @s remove this

tag @p[tag=currentTarget] add witchTarget

execute if entity @a[tag=currentTarget] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你向 ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]","color":"green","bold":true},{"text":" 投毒藥","color":"white","bold":false}]
execute if entity @a[tag=currentTarget] run scoreboard players remove @s deathPotion 1

execute unless entity @a[tag=currentTarget] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"此玩家不符合條件, 請重選"}]

execute if entity @a[tag=currentTarget] run clear @s written_book{vote:1b,witch:1b}
execute if entity @a[tag=currentTarget] run clear @s warped_fungus_on_a_stick{vote:1b,witch:1b}

tag @a remove currentTarget