scoreboard players set %aliveTeamPlayers var 0
execute as @a[tag=alive,scores={team=1..}] if score @s team = %currentTeam var run scoreboard players add %aliveTeamPlayers var 1

execute if score %aliveTeamPlayers var matches 1.. run scoreboard players add %aliveTeamCount var 1
execute if score %aliveTeamPlayers var matches 1.. run scoreboard players operation %latestTeam var = %currentTeam var

scoreboard players add %currentTeam var 1
execute if score %currentTeam var <= %TEAMS constant run function ww:ending/teaming/count