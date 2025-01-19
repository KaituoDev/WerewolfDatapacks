# context: @s = player
# scores: %count ww.var
# inputs: {id}

$execute store result score %countTaken ww.var if entity @e[predicate=ww:player,tag=$(id)]

execute if score %countTaken ww.var matches 1.. run scoreboard players operation %count ww.var -= %countTaken ww.var
execute if score %count ww.var matches ..-1 run scoreboard players set %count ww.var 0