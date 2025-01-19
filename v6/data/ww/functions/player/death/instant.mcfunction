## Running as player killed by instant death ultimate
## CONTEXT: @p[tag=this] = source player, @s = target player

execute if score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"","bold":false},{"selector":"@s","color":"green","bold":true},{"text":" 被 ","color":"white","bold":false},{"selector":"@p[tag=this]","color":"red","bold":true},{"text":" 使用 ","color":"white","bold":false},{"text":"終","italic":false,"obfuscated":true,"color":"red","bold":true},{"text":"終極武器 - 死亡之眼","color":"gold","bold":true,"italic":false,"obfuscated":false},{"text":"終","italic":false,"obfuscated":true,"color":"red","bold":true},{"text":" 擊殺","color":"white","bold":false}]

execute unless score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@s","bold":true},{"text":" 已死亡","color":"white","bold":false}]
execute unless score %death_reason system matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"","bold":false},{"text":" 你被 ","color":"white","bold":false},{"selector":"@p[tag=this]","color":"red","bold":true},{"text":" 使用 ","color":"white","bold":false},{"text":"終","italic":false,"obfuscated":true,"color":"red","bold":true},{"text":"終極武器 - 死亡之眼","color":"gold","bold":true,"italic":false,"obfuscated":false},{"text":"終","italic":false,"obfuscated":true,"color":"red","bold":true},{"text":" 擊殺","color":"white","bold":false}]

# only players can affected by "clear" command syntatically
clear @p[tag=this] warped_fungus_on_a_stick{instant_death:1b}

scoreboard players remove @p[tag=this] ultimate 1
execute as @p[tag=this] if score @s ultimate matches 1.. run function ww:item/skill/instant_death

function ww:player/death