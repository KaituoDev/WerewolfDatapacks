# morning
execute store result score %seconds var run scoreboard players operation %minutes var = %MORNING_TIME constant
scoreboard players operation %minutes var /= 60 constant
scoreboard players operation %seconds var %= 60 constant

data modify storage ww:game DISPLAY.setting.morning set value '{"text":""}'

execute if score %minutes var matches ..0 run data modify storage ww:game DISPLAY.setting.morning set value '[{"text":"白天 "},{"score":{"name":"%seconds","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]'

execute if score %minutes var matches 1.. run data modify storage ww:game DISPLAY.setting.morning set value '[{"text":"白天 "},{"score":{"name":"%minutes","objective":"var"},"color":"green","bold":true},{"text":" 分 ","color":"white","bold":false},{"score":{"name":"%seconds","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]'

# night
execute store result score %seconds var run scoreboard players operation %minutes var = %NIGHT_TIME constant
scoreboard players operation %minutes var /= 60 constant
scoreboard players operation %seconds var %= 60 constant

execute if score %minutes var matches ..0 run data modify storage ww:game DISPLAY.setting.night set value '[{"text":" | 夜晚 "},{"score":{"name":"%seconds","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]'

execute if score %minutes var matches 1.. run data modify storage ww:game DISPLAY.setting.night set value '[{"text":" | 夜晚 "},{"score":{"name":"%minutes","objective":"var"},"color":"green","bold":true},{"text":" 分 ","color":"white","bold":false},{"score":{"name":"%seconds","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]'

# wolf
execute store result score %seconds var run scoreboard players operation %minutes var = %WOLF_TIME constant
scoreboard players operation %minutes var /= 60 constant
scoreboard players operation %seconds var %= 60 constant

execute if predicate ww:mode/debate if score %minutes var matches ..0 run data modify storage ww:game DISPLAY.setting.wolf set value '[{"text":" | 狼人討論 "},{"score":{"name":"%seconds","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]'

execute if predicate ww:mode/debate if score %minutes var matches 1.. run data modify storage ww:game DISPLAY.setting.wolf set value '[{"text":" | 狼人討論 "},{"score":{"name":"%minutes","objective":"var"},"color":"green","bold":true},{"text":" 分 ","color":"white","bold":false},{"score":{"name":"%seconds","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]'

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.setting.morning","interpret":true},{"storage":"ww:game","nbt":"DISPLAY.setting.night","interpret":true},{"storage":"ww:game","nbt":"DISPLAY.setting.wolf","interpret":true}]