# context: server

scoreboard players set %canFindButton ftb.system 0

# clean up
execute at @e[tag=ftb.interaction] run setblock ~ ~ ~ air
kill @e[tag=ftb.entity]

bossbar set ftb:game_status visible false

title @a title ""
title @a subtitle ""