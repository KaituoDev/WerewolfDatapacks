## SETTING: Enable/Disable Fall Damage
## DEFAULT: %fall_damage system 0

scoreboard players add %fall_damage system 1
execute if score %fall_damage system matches 2.. run scoreboard players set %fall_damage system 0

execute if score %fall_damage system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"暴民式墜死"},{"text":" 已開啟","color":"green","bold":true},{"text":": 從太高處摔落有可能陣亡","color":"white","bold":false}]
execute if score %fall_damage system matches 0 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"暴民式墜死"},{"text":" 已關閉","color":"red","bold":true},{"text":": 從任何高度跳下來都不會死","color":"white","bold":false}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs