execute store result score %color var run data get entity @s Variant
scoreboard players add %color var 1
execute if score %color var matches 5 run scoreboard players set %color var 0
execute store result entity @s Variant byte 1.0 run scoreboard players get %color var
