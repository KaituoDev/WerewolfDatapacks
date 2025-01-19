scoreboard players remove %TIMER var 1

execute if score %PHASE var = %PHASE_1 constant run bossbar set fd:game name [{"text":"藏按鈕時間倒數 ","color":"green"},{"score":{"name":"%TIMER","objective":"var"},"color":"gold","bold":true}]
execute if score %PHASE var = %PHASE_2 constant run bossbar set fd:game name [{"text":"找按鈕時間倒數 ","color":"green"},{"score":{"name":"%TIMER","objective":"var"},"color":"gold","bold":true}]

execute store result bossbar fd:game value run scoreboard players get %TIMER var
execute if score %TIMER var matches 1.. run schedule function fd:countdown/__timer 1s
execute if score %TIMER var matches ..0 run bossbar set fd:game visible false