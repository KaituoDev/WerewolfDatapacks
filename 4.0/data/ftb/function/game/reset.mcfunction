# context: server

scoreboard players set %started ftb.system 0
scoreboard players set %canPlaceButton ftb.system 0
scoreboard players set %canFindButton ftb.system 0
scoreboard players set %hasRanOnce ftb.system 0

bossbar set ftb:game_status visible false
# clean up
execute at @e[tag=ftb.interaction] run setblock ~ ~ ~ air
kill @e[tag=ftb.entity]