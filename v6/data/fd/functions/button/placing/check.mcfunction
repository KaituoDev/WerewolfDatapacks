execute store success score %SUCCESS var unless entity @e[type=area_effect_cloud,distance=..9,tag=button]

# if player is regaining access to place buttons from being denied, give buttons back before they hit cycle
execute as @s[tag=denied] if score %SUCCESS var matches 1 run function fd:button/placing/obtain/give

execute if score %SUCCESS var matches 1 run tag @s remove denied
execute if score %SUCCESS var matches 0 run tag @s add denied