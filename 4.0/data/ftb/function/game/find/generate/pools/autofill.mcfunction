# context: server

execute store result score %rolesLength ftb.var run data get storage ftb:temp roles
execute store result score %missingCount ftb.var if entity @e[tag=ftb.marker]
scoreboard players operation %missingCount ftb.var -= %rolesLength ftb.var
execute if score %missingCount ftb.var matches ..0 run return 0

function ftb:game/find/generate/pools/_insert_role {id: 'villager'}

function ftb:game/find/generate/pools/autofill