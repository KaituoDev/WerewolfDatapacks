## @e[tag=this_aec] refers to the current button aec
## @p[tag=owner] refers to the player who placed the button
## running as a player
## running inside fd:button/phase_2/check

# particle happy_villager ~ ~ ~ 0 0 0 0.1 1 force @s
scoreboard players remove %raydist var 1

tag @s add this
# execute as @e[dx=0,type=area_effect_cloud,tag=button,tag=this_aec] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] unless score @s owner = @p[tag=this] id run function fd:button/phase_2/looking/found

execute as @e[dx=0,type=area_effect_cloud,tag=button,tag=this_aec] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function fd:button/phase_2/looking/found

tag @s remove this

execute unless score %result var matches 1.. if score %raydist var matches 1.. positioned ^ ^ ^0.25 run function fd:button/phase_2/looking/main