# context: @s = entity[scores={ww.gracefulClean=1..}]

tp ~ 1000 ~
scoreboard players remove @s ww.gracefulClean 1
execute if score @s ww.gracefulClean matches ..0 run kill @s

