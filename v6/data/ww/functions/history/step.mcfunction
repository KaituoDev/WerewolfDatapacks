scoreboard players add @s historyId 1

execute if score @s historyId > %current historyId run scoreboard players set @s historyId 1

execute if score %current historyId matches 1.. run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"蹲下+右鍵","color":"gold","bold":true},{"text":"以讀取第 ","color":"white","bold":false},{"score":{"name":"@s","objective":"historyId"},"color":"green","bold":true},{"text":" 場的職業歷史紀錄","color":"white","bold":false}]

execute unless score %current historyId matches 1.. run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"沒有職業歷史紀錄可以閱覽","color":"white"}]