tag @p[tag=has_role,tag=!fool,sort=random] add fool
scoreboard players remove %fool var 1
execute if score %fool var matches 1.. run function ww:role/assign/get/fool