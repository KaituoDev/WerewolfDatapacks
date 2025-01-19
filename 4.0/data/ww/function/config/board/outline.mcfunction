# context: @s = player
# location: at @s

# south: +z
execute if entity @s[y_rotation=-45..45] run return run \
  execute rotated ~ 0 positioned ^-2 ^ ^4 align xyz run \
    function ww:config/board/outline/_z {direction: 'south'}

# west: -x
execute if entity @s[y_rotation=46..135] run return run \
  execute rotated ~ 0 positioned ^-2 ^ ^4 align xyz run \
    function ww:config/board/outline/_x {direction: 'west'}

# north: -z
execute if entity @s[y_rotation=136..-135] run return run \
  execute rotated ~ 0 positioned ^2 ^ ^4 align xyz run \
    function ww:config/board/outline/_z {direction: 'north'}

# east: +x
execute if entity @s[y_rotation=-136..-46] run return run \
  execute rotated ~ 0 positioned ^2 ^ ^4 align xyz run \
    function ww:config/board/outline/_x {direction: 'east'}