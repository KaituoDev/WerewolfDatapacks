## SETTING: Enable/Disable Fast Mode
## DEFAULT: %fast_mode system 0

scoreboard players add %fast_mode system 1
execute if score %fast_mode system matches 2.. run scoreboard players set %fast_mode system 0

execute if score %fast_mode system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"平票死人"},{"text":" 已開啟","color":"green","bold":true},{"text":": 白天平票時, 隨機一人出局","color":"white","bold":false}]
execute if score %fast_mode system matches 0 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"平票死人"},{"text":" 已關閉","color":"red","bold":true},{"text":": 白天平票時, 無人出局","color":"white","bold":false}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs