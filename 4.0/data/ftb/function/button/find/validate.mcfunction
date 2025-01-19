# context: @s = player
# location: at @s, at the button location

#particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 1 force

# clear raydist value
scoreboard players reset %raydist ftb.var

execute align xyz positioned ~0.5 ~ ~0.5 run function ftb:button/find/setup

tag @s add ftb.button.placed
clear @s

playsound minecraft:entity.experience_orb.pickup
function ww:chat/_dm {type: 'info', message: '成功放置按钮！'}

return 1