scoreboard players set %in math 100
function ww:math/rng

scoreboard players operation %drawTier var = %out math

execute if score %drawTier var matches 0..70 run function ww:gacha/prize/t2
execute if score %drawTier var matches 71..94 run function ww:gacha/prize/t1
execute if score %drawTier var matches 95..99 run function ww:gacha/prize/t0

scoreboard players remove @s tokens 1