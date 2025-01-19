scoreboard players operation %out math += %tmp math
scoreboard players operation %out math /= 2 constant

scoreboard players operation %tmp math = %in math
scoreboard players operation %tmp math /= %out math

execute if score %out math > %tmp math run function ww:math/__sqrt