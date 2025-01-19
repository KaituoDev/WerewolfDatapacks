execute store success score %success var if entity @e[type=marker,tag=map1]

execute if score %success var matches 1 run scoreboard players set %map system 1

execute if score %success var matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"場地已改為 ","color":"white","bold":false},{"storage":"ww:game","nbt":"mapNames[0]","color":"green","bold":true}]

execute if score %success var matches 0 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"尚未設置 ","color":"red","bold":false},{"storage":"ww:game","nbt":"mapNames[0]","color":"green","bold":true}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs