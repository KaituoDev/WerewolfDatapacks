# INPUT:  %in math, the max value in the random number gen
# OUTPUT: %out math, a random number from 0 ~ (%in - 1)

summon minecraft:marker ~ ~ ~ {Tags:["uuid"]}
execute store result score %out math run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score %temp math run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score %temp1 math run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score %temp2 math run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation %out math += %temp math
scoreboard players operation %out math += %temp1 math
scoreboard players operation %out math += %temp2 math
kill @e[tag=uuid]

# modulo will always yield a non-negative value
scoreboard players operation %out math %= %in math