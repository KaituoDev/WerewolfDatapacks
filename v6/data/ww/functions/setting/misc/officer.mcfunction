## SETTING: Enable/Disable Officer
## DEFAULT: %officer_enabled system 0

scoreboard players add %officer_enabled system 1
execute if score %officer_enabled system matches 2.. run scoreboard players set %officer_enabled system 0

execute if score %officer_enabled system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"警長"},{"text":" 已開啟","color":"green","bold":true}]
execute if score %officer_enabled system matches 0 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"警長"},{"text":" 已關閉","color":"red","bold":true}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs