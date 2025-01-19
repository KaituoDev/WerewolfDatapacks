execute store result bossbar minecraft:force_morning value run scoreboard players remove %force_morning var 1

execute if score %force_morning var matches 1.. run schedule function ww:session/force_morning/main_1s 1s

bossbar set minecraft:force_morning name [{"text":"狼人殺人, ","color":"white","bold":true}," ",{"score":{"name":"%force_morning","objective":"var"},"color":"gold","bold":true},{"text":" 秒後進入白天","color":"white","bold":true}]

execute if score %force_morning var matches ..0 run function ww:session/force_morning/end