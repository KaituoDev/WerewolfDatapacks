## CONTEXT: @s = button aec, @p[tag=this] = current player
## append to fd:game buttons: {x,y,z,distance,name}

execute store result score %X var run data get entity @s Pos[0]
execute store result score %Y var run data get entity @s Pos[1]
execute store result score %Z var run data get entity @s Pos[2]

execute store result score %dX var run data get entity @p[tag=this] Pos[0]
execute store result score %dY var run data get entity @p[tag=this] Pos[1]
execute store result score %dZ var run data get entity @p[tag=this] Pos[2]

scoreboard players operation %dX var -= %X var
scoreboard players operation %dY var -= %Y var
scoreboard players operation %dZ var -= %Z var

scoreboard players operation %dX var *= %dX var
scoreboard players operation %dY var *= %dY var
scoreboard players operation %dZ var *= %dZ var

scoreboard players operation %in math = %dX var
scoreboard players operation %in math += %dY var
scoreboard players operation %in math += %dZ var

# add 1 to buttons count
execute store result score %count var run data get storage fd:game buttons.count
execute store result storage fd:game buttons.count int 1 run scoreboard players add %count var 1

# append an object to buttons array
data modify storage fd:game temp set value {}

function ww:math/sqrt
execute store result storage fd:game temp.distance int 1 run scoreboard players get %out math

execute store result storage fd:game temp.x int 1.0 run data get entity @s Pos[0]
execute store result storage fd:game temp.y int 1.0 run data get entity @s Pos[1]
execute store result storage fd:game temp.z int 1.0 run data get entity @s Pos[2]

data modify storage fd:game temp.name set from entity @s CustomName
data modify storage fd:game buttons.array append from storage fd:game temp

