# context: server

scoreboard players set %canPlaceButton ftb.system 0

bossbar set ftb:game_status visible false

tag @a remove ftb.placement.denied
tag @a remove ftb.button.placed
clear @a

title @a title ""
title @a subtitle ""

function ftb:game/find/init