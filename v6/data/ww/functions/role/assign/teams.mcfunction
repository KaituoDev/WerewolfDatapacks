scoreboard players operation @p[tag=has_role,scores={team=0},sort=random] team = %currentTeam var

scoreboard players add %currentTeam var 1
execute if score %currentTeam var > %TEAMS constant run scoreboard players set %currentTeam var 1
execute if entity @a[tag=has_role,scores={team=0}] run function ww:role/assign/teams