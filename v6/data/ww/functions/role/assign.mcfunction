function ww:role/assign/init
execute as @a[predicate=!ww:god,sort=random,tag=!has_role] run function ww:role/assign/get
kill @e[type=marker,tag=role]

# ensure each player has a role
execute as @a[tag=!has_role,predicate=!ww:god] run function ww:role/villager/assign
tag @a[tag=!has_role,predicate=!ww:god] add has_role

# assign fools
scoreboard players operation %fool var = %fool pool
execute if score %fool var matches 1.. run function ww:role/assign/get/fool

# assign teams
scoreboard players set %currentTeam var 1
execute if predicate ww:teaming run scoreboard players set @a[tag=has_role] team 0
execute if predicate ww:teaming run function ww:role/assign/teams

function ww:role/assign/postprocess