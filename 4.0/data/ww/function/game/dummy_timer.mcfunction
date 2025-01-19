# # context: @s = entity[scores={ww.dummyTimer=1..}]

scoreboard players remove @s ww.dummyTimer 1
execute if score @s ww.dummyTimer matches ..0 run scoreboard players set @s ww.gracefulClean 20