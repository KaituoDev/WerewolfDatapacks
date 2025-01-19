schedule clear fd:countdown/__timer

bossbar set fd:game name {"text":"找按鈕時間倒數","color":"red"}
bossbar set fd:game visible true
bossbar set fd:game players @a

scoreboard players set %TIMER var 180

execute store result bossbar fd:game max run scoreboard players get %TIMER var
execute store result bossbar fd:game value run scoreboard players get %TIMER var

function fd:countdown/__timer