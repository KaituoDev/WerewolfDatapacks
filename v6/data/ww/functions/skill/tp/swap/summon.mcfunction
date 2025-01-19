summon marker ~ ~ ~ {Tags:[swap_tp,summoned]}
data modify entity @e[type=marker,tag=summoned,limit=1] Rotation set from entity @s Rotation

execute store result score @s swapOrder run scoreboard players add %current swapOrder 1

scoreboard players operation %temp swapOrder = @s swapOrder
scoreboard players add %temp swapOrder 1
execute if score %temp swapOrder > %total swapOrder run scoreboard players set %temp swapOrder 1
scoreboard players operation @e[type=marker,tag=summoned,limit=1] swapOrder = %temp swapOrder

tag @e[tag=summoned] remove summoned