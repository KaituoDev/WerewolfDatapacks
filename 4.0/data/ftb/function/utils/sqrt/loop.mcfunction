# scores: %output, %temp, %input ftb.var, %divider ftb.var

scoreboard players operation %output ftb.var += %temp ftb.var
scoreboard players operation %output ftb.var /= %divider ftb.var

scoreboard players operation %temp ftb.var = %input ftb.var
scoreboard players operation %temp ftb.var /= %output ftb.var

execute if score %output ftb.var > %temp ftb.var run function ftb:utils/sqrt/loop