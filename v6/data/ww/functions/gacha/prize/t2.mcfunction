scoreboard players set %in math 10
function ww:math/rng

scoreboard players operation %drawTier2 var = %out math

execute if score %drawTier2 var matches 0..8 run tellraw @s [{"text":"你抽到了 "},{"text":"[普通] ","color":"white","bold":true},{"text":"銘謝惠顧","color":"light_gray"}]

execute if score %drawTier2 var matches 9 run scoreboard players add @s tokens 2
execute if score %drawTier2 var matches 9 run tellraw @s [{"text":"你抽到了 "},{"text":"[普通] ","color":"white","bold":true},{"text":"2枚代幣","color":"light_gray"}]