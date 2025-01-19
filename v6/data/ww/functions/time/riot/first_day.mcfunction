scoreboard players set %time system 30

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"由於是暴民式的第一天， 縮短白天至30秒","color":"yellow"}]

function ww:time/display

scoreboard objectives setdisplay sidebar

# everyone will get a skip item
# wolves's reveal item wouldn't be doubted too easily
# seer also has their own diary item

## no longer used