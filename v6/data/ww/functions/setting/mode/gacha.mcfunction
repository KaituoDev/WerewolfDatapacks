scoreboard players operation %MODE constant = %RIOT_MODE constant
scoreboard players set %gacha_mode system 1

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"模式已改為 "},{"text":"暴民轉蛋模式","color":"green","bold":true}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs