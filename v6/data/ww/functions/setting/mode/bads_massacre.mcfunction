## SETTING: Enable/Disable Bads Massacre ending check
## DEFAULT: %bads_massacre system 0

scoreboard players add %bads_massacre system 1
execute if score %bads_massacre system matches 2.. run scoreboard players set %bads_massacre system 0

execute if score %bads_massacre system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"屠城式結局"},{"text":" 已開啟","color":"green","bold":true},{"text":": 狼人不限殺人次數 (暴民式不會強制進入白天, 辯論式只要被一隻狼盯上就得死), 但好人陣營與怨靈陣營必須全死光才算狼人陣營獲勝","color":"white","bold":false}]
execute if score %bads_massacre system matches 0 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"屠城式結局"},{"text":" 已關閉","color":"red","bold":true}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs