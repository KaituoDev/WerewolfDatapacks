scoreboard players set %in math 10
function ww:math/rng

scoreboard players operation %drawTier1 var = %out math

execute if score %drawTier1 var matches 0..2 run function ww:item/skill/glow/all
execute if score %drawTier1 var matches 0..2 run tellraw @s [{"text":"你抽到了 "},{"text":"[稀有] ","color":"blue","bold":true},{"text":"全體發光","color":"light_purple"}]

execute if score %drawTier1 var matches 3..4 run give @s splash_potion{display:{Name:'[{"text":"[稀有] ","color":"blue","bold":true,"italic":false},{"text":"隱形藥水","color":"light_purple","bold":true,"italic":false}]'},CustomPotionEffects:[{Id:14b,Amplifier:0b,Duration:100,ShowParticles:0b}],CustomPotionColor:3932415} 1
execute if score %drawTier1 var matches 3..4 run tellraw @s [{"text":"你抽到了 "},{"text":"[稀有] ","color":"blue","bold":true},{"text":"隱形藥水","color":"light_purple"}]

execute if score %drawTier1 var matches 5..6 run give @s splash_potion{display:{Name:'[{"text":"[稀有] ","color":"blue","bold":true,"italic":false},{"text":"速度藥水","color":"light_purple","bold":true,"italic":false}]'},CustomPotionEffects:[{Id:1b,Amplifier:2b,Duration:100,ShowParticles:0b}],CustomPotionColor:1030143} 1
execute if score %drawTier1 var matches 5..6 run tellraw @s [{"text":"你抽到了 "},{"text":"[稀有] ","color":"blue","bold":true},{"text":"速度藥水","color":"light_purple"}]

execute if score %drawTier1 var matches 7..9 run give @s spyglass{display:{Name:'[{"text":"[稀有] ","color":"blue","bold":true,"italic":false},{"text":"望遠鏡","color":"light_purple","bold":true,"italic":false}]'}} 1
execute if score %drawTier1 var matches 7..9 run tellraw @s [{"text":"你抽到了 "},{"text":"[稀有] ","color":"blue","bold":true},{"text":"望遠鏡","color":"light_purple"}]