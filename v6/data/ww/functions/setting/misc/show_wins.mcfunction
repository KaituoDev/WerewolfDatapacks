## SETTING: Enable/Disable wins scoreboard
## DEFAULT: %show_wins system 1

scoreboard players add %show_wins system 1
execute if score %show_wins system matches 2.. run scoreboard players set %show_wins system 0

execute if score %show_wins system matches 1 run scoreboard objectives setdisplay sidebar wins
execute if score %show_wins system matches 1 run scoreboard objectives setdisplay list wins

execute if score %show_wins system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"顯示勝利次數"},{"text":" 已開啟","color":"green","bold":true},{"text":": 遊戲結束後都會顯示所有玩家累積的勝利場數","color":"white","bold":false}]

execute if score %show_wins system matches 0 run scoreboard objectives setdisplay sidebar
execute if score %show_wins system matches 0 run scoreboard objectives setdisplay list

execute if score %show_wins system matches 0 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"顯示勝利次數"},{"text":" 已關閉","color":"red","bold":true},{"text":": 遊戲結束後都會隱藏所有玩家累積的勝利場數","color":"white","bold":false}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs