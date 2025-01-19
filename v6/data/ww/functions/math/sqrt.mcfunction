## %in = value to square root
## %out = caculated value

scoreboard players operation %out math = %in math
scoreboard players set %tmp math 1

execute if score %out math > %tmp math run function ww:math/__sqrt