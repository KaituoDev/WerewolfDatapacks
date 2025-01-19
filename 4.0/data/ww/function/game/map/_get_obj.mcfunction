# context: server
# inputs: {index}
# output: ww:output mapObj

data remove storage ww:output mapObj
# 1. get the map object from ww:memory config.MAPS
$data modify storage ww:output mapObj set from storage ww:memory config.MAPS[$(index)]