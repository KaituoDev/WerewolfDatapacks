## CONTEXT: a player who is in the lovers campaign
## OUTPUT: storage ww:game actionbar.lovers

# execute if entity @s[tag=cupid,tag=!pairA,tag=!pairB] run function ww:player/actionbar/lovers/cupid
execute if entity @s[tag=pairA] run function ww:player/actionbar/lovers/pair
execute if entity @s[tag=pairB] run function ww:player/actionbar/lovers/pair