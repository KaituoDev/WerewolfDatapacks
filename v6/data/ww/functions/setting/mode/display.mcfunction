execute if predicate ww:mode/riot unless score %gacha_mode system matches 1 run data modify storage ww:game DISPLAY.setting.mode set value '[{"text":"模式: "},{"text":"暴民式","bold":true,"color":"red"}]'

execute if predicate ww:mode/riot if score %gacha_mode system matches 1 run data modify storage ww:game DISPLAY.setting.mode set value '[{"text":"模式: "},{"text":"暴民轉蛋模式","bold":true,"color":"red"}]'

execute if predicate ww:mode/debate run data modify storage ww:game DISPLAY.setting.mode set value '[{"text":"模式: "},{"text":"辯論式","bold":true,"color":"red"}]'