execute store result bossbar minecraft:wolf_vote value run scoreboard players remove %wolf_vote var 1
execute store result bossbar minecraft:skip_item value run scoreboard players get %wolf_vote var

execute if score %wolf_vote var matches 1.. run schedule function ww:session/wolf/main_1s 1s

bossbar set minecraft:wolf_vote name [{"text":"狼人目標選擇倒數","color":"white","bold":true}," ",{"score":{"name":"%wolf_vote","objective":"var"},"color":"gold","bold":true}]
bossbar set minecraft:skip_item name [{"text":"跳過夜晚道具發放","color":"white","bold":true}," ",{"score":{"name":"%wolf_vote","objective":"var"},"color":"gold","bold":true}]

execute if score %wolf_vote var matches ..0 run function ww:session/wolf/end