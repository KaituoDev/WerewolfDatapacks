tag @s add this
execute as @a[scores={localId=1..},tag=!this] if score @s localId = @p[tag=this] localVoteTrigger run tag @s add currentTarget
tag @s remove this

# fool: cannot select anyone
execute if entity @s[tag=fool] run tag @a remove currentTarget

# storing the global id of the targeted player
execute if entity @s[tag=!fool] run scoreboard players operation @s hunterTarget = @p[tag=currentTarget] id

execute if entity @a[tag=currentTarget] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","color":"white","bold":false},{"text":"獵槍命中 ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]","color":"green","bold":true}]

execute unless entity @a[tag=currentTarget] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"此玩家不符合成為陪葬對象的條件, 請選其他的玩家"}]

execute if entity @a[tag=currentTarget] run clear @s written_book{vote:1b,hunter:1b}

tag @a remove currentTarget