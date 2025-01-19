## NOTE: this is ran during morning

tag @s add this
execute as @a[scores={localId=1..}] if score @s localId = @p[tag=this] localVoteTrigger run tag @s add currentTarget
tag @s remove this

scoreboard players set %success var 0
execute if entity @a[tag=currentTarget] run scoreboard players set %success var 1

execute if score %success var matches 1 if entity @s[tag=!fool] run tag @p[tag=currentTarget] add sirenTarget

# fool case: let bads know the siren tried to interfer
execute if score %success var matches 1 if entity @s[tag=fool] run tellraw @a[tag=bads] [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"","bold":false},{"selector":"@s","color":"red","bold":true},{"text":" 嘗試對 "},{"selector":"@p[tag=currentTarget]","color":"green","bold":true},{"text":" 唱歌, 然而他是蠢人魚所以唱得太難聽而妨礙失敗","color":"white","bold":false}]

## siren will not know if it was success or not
tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你對 "},{"selector":"@p[tag=currentTarget]","color":"green","bold":true},{"text":" 唱歌, 如果他是狼人, 今晚狼群將無法殺人","color":"white","bold":false}]

tag @a remove currentTarget

clear @s written_book{siren:1b}