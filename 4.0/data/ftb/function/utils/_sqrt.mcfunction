# inputs: {value}
# output: ftb:output sqrt

$scoreboard players set %input ftb.var $(value)
scoreboard players operation %output ftb.var = %input ftb.var
scoreboard players set %temp ftb.var 1
scoreboard players set %divider ftb.var 2

execute if score %output ftb.var > %temp ftb.var run function ftb:utils/sqrt/loop

execute store result storage ftb:output sqrt int 1 run scoreboard players get %output ftb.var