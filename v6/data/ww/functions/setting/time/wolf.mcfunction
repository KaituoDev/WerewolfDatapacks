## MIN: %MIN_TIME constant, MAX: %MAX_TIME constant

scoreboard players add %WOLF_TIME constant 30
execute if score %WOLF_TIME constant > %MAX_TIME constant run scoreboard players operation %WOLF_TIME constant = %MIN_TIME constant
execute if entity @s[predicate=ww:sneaking] run scoreboard players operation %WOLF_TIME constant = %MIN_TIME constant

execute store result score %seconds var run scoreboard players operation %minutes var = %WOLF_TIME constant
scoreboard players operation %minutes var /= 60 constant
scoreboard players operation %seconds var %= 60 constant

execute if score %minutes var matches ..0 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"辯論式狼人討論時長已改為 "},{"score":{"name":"%seconds","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]

execute if score %minutes var matches 1.. run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"辯論式狼人討論時長已改為 "},{"score":{"name":"%minutes","objective":"var"},"color":"green","bold":true},{"text":" 分 ","color":"white","bold":false},{"score":{"name":"%seconds","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]