# context: server

function ftb:game/reset

title @a title ""
title @a subtitle ""

scoreboard players set %hasRanOnce ftb.system 1
function ww:game/start