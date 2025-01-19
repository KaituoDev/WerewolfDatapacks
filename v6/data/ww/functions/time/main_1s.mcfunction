schedule function ww:time/main_1s 1s

scoreboard players remove %time system 1
function ww:time/display

execute if score %time system matches ..0 run function ww:time/swap