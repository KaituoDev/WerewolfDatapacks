# context: server
# storage: ww:memory config.MAPS

data modify storage ww:memory config.MAPS set value []

data modify storage ww:temp loopInput set value {count: 18}
function ww:init/data/maps/_loop with storage ww:temp loopInput

scoreboard players set %map ww.system 0