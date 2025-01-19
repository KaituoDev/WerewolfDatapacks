# context: server

execute store result score %rolesLength ww.var run data get storage ww:temp roles
execute store result score %missingCount ww.var if entity @e[predicate=ww:player,tag=!ww.has_role]
scoreboard players operation %missingCount ww.var -= %rolesLength ww.var
execute if score %missingCount ww.var matches ..0 run return 0

function ww:game/assign/generate/pools/_insert_role {id: 'villager'}

function ww:game/assign/generate/pools/autofill