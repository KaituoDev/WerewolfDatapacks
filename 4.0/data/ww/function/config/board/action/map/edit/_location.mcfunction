# context: @s = player
# inputs: {index, location, rotation}

$data modify storage ww:memory config.MAPS[$(index)].location set value '$(location)'
$data modify storage ww:memory config.MAPS[$(index)].rotation set value '$(rotation)'
$data modify storage ww:memory config.MAPS[$(index)].modified set value 1b

$tellraw @s [{"nbt":"config.MAPS[$(index)].name","storage":"ww:memory"},{"text":" 的起始點已改為 ","color":"white","bold":false},{"text":"$(location)","color":"green","bold":true}]

execute if data storage ww:memory config.LOBBY run \
  tellraw @s {"text":"點此傳送回大廳","color":"green","bold":true, \
    "hoverEvent":{"action":"show_text","value":["傳送回大廳"]}, \
    "clickEvent":{"action":"run_command","value":"/function ww:game/map/_teleport with storage ww:memory config.LOBBY"} \
  }