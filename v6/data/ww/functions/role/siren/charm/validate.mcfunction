## CONTEXT: @s = armor_stand with attraction tag, @e[tag=this,limit=1] = current siren

tag @s add this_attraction

# validate source
scoreboard players set %found var 0
execute as @e[scores={id=1..},tag=alive,distance=..10] if score @s id = @e[tag=this_attraction,limit=1] sirenSource run scoreboard players add %found var 1
execute if score %found var matches 0 run kill @s

# validate charming
scoreboard players set %found var 0
execute as @e[scores={id=1..},tag=alive] if score @s id = @e[tag=this_attraction,limit=1] sirenCharming run scoreboard players add %found var 1
execute if score %found var matches 0 run kill @s

tag @s remove this_attraction