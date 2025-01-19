## SETTING: Enable/Disable Death Reason
## DEFAULT: %death_reason system 0

scoreboard players add %death_reason system 1
execute if score %death_reason system matches 2.. run scoreboard players set %death_reason system 0

execute if score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"死亡原因"},{"text":" 已開啟","color":"green","bold":true},{"text":": 遊戲會正常顯示死者和死因給所有玩家","color":"white","bold":false}]
execute if score %death_reason system matches 0 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"死亡原因"},{"text":" 已關閉","color":"red","bold":true},{"text":": 遊戲僅會顯示死因給死者, 其他玩家不會知道死因","color":"white","bold":false}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs