# context: server
# storage: ww:memory config.MAPS
# inputs: {count}

$scoreboard players set %count ww.var $(count)
execute if score %count ww.var matches ..0 run return 0

# modified: if the location has been modified
$data modify storage ww:memory config.MAPS prepend value \
  { \
    id: 'map-$(count)', \
    count: $(count), \
    name: '地点$(count)', \
    modified: false, \
    location: '~ ~ ~', \
    rotation: '0 0' \
  }

data modify storage ww:temp loopInput set value {}
execute store result storage ww:temp loopInput.count int 1 run scoreboard players remove %count ww.var 1
function ww:init/data/maps/_loop with storage ww:temp loopInput