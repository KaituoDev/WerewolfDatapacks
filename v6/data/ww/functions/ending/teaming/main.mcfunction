scoreboard players set %aliveTeamCount var 0
scoreboard players set %currentTeam var 1
scoreboard players set %latestTeam var -1

function ww:ending/teaming/count

execute if score %aliveTeamCount var matches 1 run function ww:ending/teaming/win
execute if score %aliveTeamCount var matches 0 run function ww:ending/damn