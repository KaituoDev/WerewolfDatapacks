## SETTING: Enable/Disable Fast Mode
## DEFAULT: %find_buttons system 0

scoreboard players add %find_buttons system 1
execute if score %find_buttons system matches 2.. run scoreboard players set %find_buttons system 0

execute if score %find_buttons system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"找職業按鈕"},{"text":" 已開啟","color":"green","bold":true},{"text":"\n遊戲開始後, 在隨機分配玩家職業前, 給予玩家選擇職業的機會。 \n第一階段: 一分鐘內由玩家藏好按鈕\n第二階段: 每個按鈕都有對應一個職業, 玩家可以在三分鐘內找到想要的職業按鈕, 三分鐘後沒找到的玩家會由遊戲自動分配","color":"white","bold":false}]
execute if score %find_buttons system matches 0 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"找職業按鈕"},{"text":" 已關閉","color":"red","bold":true},{"text":": 職業將隨機分配","color":"white","bold":false}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs