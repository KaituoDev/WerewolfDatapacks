# summon marker at everyone's location
# when a marker has been teleported, delete it

scoreboard players reset * swapOrder
scoreboard players set %current swapOrder 0
execute store result score %total swapOrder if entity @a[tag=alive]
execute as @a[tag=alive,sort=random] at @s run function ww:skill/tp/swap/summon
execute as @a[tag=alive] at @s run function ww:skill/tp/swap/__all

kill @e[type=marker,tag=swap_tp]