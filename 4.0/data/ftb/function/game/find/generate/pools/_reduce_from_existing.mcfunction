# context: @s = player
# scores: %count ftb.var
# inputs: {id}

$execute store result score %countTaken ftb.var if entity @e[predicate=ww:player,tag=$(id)]

execute if score %countTaken ftb.var matches 1.. run scoreboard players operation %count ftb.var -= %countTaken ftb.var
execute if score %count ftb.var matches ..-1 run scoreboard players set %count ftb.var 0