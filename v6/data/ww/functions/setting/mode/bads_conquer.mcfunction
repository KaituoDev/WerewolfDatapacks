## SETTING: Enable/Disable Bads Conquer ending check
## DEFAULT: %bads_conquer system 0

scoreboard players add %bads_conquer system 1
execute if score %bads_conquer system matches 2.. run scoreboard players set %bads_conquer system 0

execute if score %bads_conquer system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"屠邊式結局"},{"text":" 已開啟","color":"green","bold":true},{"text":": 狼人陣營每晚限殺一名玩家, 當初始的狼人陣營數量 = 活著好人陣營數量, 除非還有活著的怨靈陣營, 否則狼人陣營即獲勝","color":"white","bold":false}]
execute if score %bads_conquer system matches 0 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"屠邊式結局"},{"text":" 已關閉","color":"red","bold":true}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs