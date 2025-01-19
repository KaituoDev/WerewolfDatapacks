tag @s add this
execute as @a[scores={localId=1..},tag=!this,tag=alive] if score @s localId = @p[tag=this] localVoteTrigger run tag @s add currentTarget
tag @s remove this

execute if entity @a[tag=currentTarget] run scoreboard players operation @s knightTarget = @p[tag=currentTarget] id

execute if entity @a[tag=currentTarget] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你向 ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]","color":"red","bold":true},{"text":" 發起決鬥","color":"white","bold":false}]

execute unless entity @a[tag=currentTarget] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"此玩家不符合決鬥對象的條件, 請重選"}]

execute if entity @s[tag=!fool] if entity @a[tag=currentTarget,tag=bads] run tag @p[tag=currentTarget] add knightTarget
execute if entity @s[tag=!fool] unless entity @a[tag=currentTarget,tag=bads] run tag @s add knightWrong

execute if entity @s[tag=fool] if entity @a[tag=currentTarget,tag=bads] run tag @p[tag=currentTarget] add knightBeaten
execute if entity @s[tag=fool] unless entity @a[tag=currentTarget,tag=bads] run tag @s add knightMistaken

execute if entity @a[tag=currentTarget] run scoreboard players remove @s duel 1
execute if entity @a[tag=currentTarget] run clear @s written_book{duel:1b}

tag @a remove currentTarget