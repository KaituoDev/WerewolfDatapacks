tag @s add this
execute as @a[scores={localId=1..}] if score @s localId = @p[tag=this] localVoteTrigger run tag @s add currentTarget
tag @s remove this

scoreboard players set %success var 0
execute if entity @a[tag=currentTarget] unless score @p[tag=currentTarget] guardCD matches 1.. run scoreboard players set %success var 1

execute if score %success var matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","color":"white","bold":false},{"text":"你守護了 ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]","color":"green","bold":true}]

execute if score %success var matches 0 if score @p[tag=currentTarget] guardCD matches 1.. run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"此玩家要等到下"},{"score":{"name":"@p[tag=currentTarget]","objective":"guardCD"}},{"text":"晚才可再次守護"}]

execute unless entity @a[tag=currentTarget] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"此玩家不符合條件, 請重選"}]

execute if score %success var matches 1 run clear @s written_book{vote:1b,guardian:1b}
execute if score %success var matches 1 if entity @s[tag=!fool] run tag @p[tag=currentTarget] add guardianSave
execute if score %success var matches 1 if entity @s[tag=!fool] run tag @p[tag=currentTarget] add guardianClear
execute if score %success var matches 1 run scoreboard players add @p[tag=currentTarget] guardCD 2

execute if score %success var matches 1 if entity @s[tag=fool] run tag @p[tag=currentTarget] add dying
execute if score %success var matches 1 if entity @s[tag=fool] run tag @p[tag=currentTarget] add guardianMistaken

tag @a remove currentTarget